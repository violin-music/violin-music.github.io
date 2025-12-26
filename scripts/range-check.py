#!/usr/bin/env python3
import argparse
import re
import subprocess
import tempfile
from pathlib import Path

RANGE_SENTINEL = "RANGE:"

def extract_target_key(text: str) -> str:
    match = re.search(r'^\s*targetKey\s*=\s*([a-g][eisbf#]*m?)\s*$', text, re.MULTILINE)
    return match.group(1) if match else ""

def extract_octave_shift(text: str) -> str:
    match = re.search(r"^\s*octaveShift\s*=\s*([a-g][eisbf#]*[,']*)\s*$", text, re.MULTILINE)
    return match.group(1) if match else "c"

def extract_music_include(text: str) -> str:
    matches = re.findall(r'\\include\s+"([^"]+)"', text)
    for match in matches:
        if match.endswith("_music.ily"):
            return match
    return ""

def build_checker(include_path: str, target_key: str, octave_shift: str) -> str:
    template = """\\version "2.24.4"
\\language "english"
\\include "%(include)s"

targetKey = %(target)s
octaveShift = %(octave)s

#(define (collect-pitches mus)
   (let ((pitches '()))
     (define (walk m)
       (when (ly:music? m)
         (let ((p (ly:music-property m 'pitch)))
           (when (ly:pitch? p)
             (set! pitches (cons p pitches))))
         (let ((e (ly:music-property m 'element)))
           (when (ly:music? e) (walk e)))
         (let ((es (ly:music-property m 'elements)))
           (when (list? es) (for-each walk es)))
         (let ((as (ly:music-property m 'articulations)))
           (when (list? as) (for-each walk as)))))
     (walk mus)
     pitches))

#(define (pitch->lily p)
   (let* ((names '("c" "d" "e" "f" "g" "a" "b"))
          (name (list-ref names (ly:pitch-notename p)))
          (alt (ly:pitch-alteration p))
          (acc (cond ((= alt 1/2) "s")
                     ((= alt -1/2) "f")
                     ((= alt 1) "ss")
                     ((= alt -1) "ff")
                     (else "")))
          (oct (ly:pitch-octave p))
          (octstr (cond ((>= oct 0) (make-string (+ oct 1) #\\'))
                        ((< oct -1) (make-string (- (+ oct 1)) #\\,))
                        (else ""))))
     (string-append name acc octstr)))

#(define (range-of-music mus)
   (let ((pitches (collect-pitches mus)))
     (if (null? pitches)
         (cons #f #f)
         (let ((minp (car pitches))
               (maxp (car pitches)))
           (for-each
             (lambda (p)
               (when (< (ly:pitch-semitones p) (ly:pitch-semitones minp))
                 (set! minp p))
               (when (> (ly:pitch-semitones p) (ly:pitch-semitones maxp))
                 (set! maxp p)))
             (cdr pitches))
           (cons minp maxp)))))

#(define (report-range mus)
   (let* ((range (range-of-music mus))
          (minp (car range))
          (maxp (cdr range))
          (violin-low #{ g #})
          (violin-high #{ e''' #})
          (min-ok (>= (ly:pitch-semitones minp) (ly:pitch-semitones violin-low)))
          (max-ok (<= (ly:pitch-semitones maxp) (ly:pitch-semitones violin-high)))
          (min-borderline (= (ly:pitch-semitones minp) (ly:pitch-semitones violin-low)))
          (max-borderline (= (ly:pitch-semitones maxp) (ly:pitch-semitones violin-high)))
          (ok (and min-ok max-ok))
          (status (cond ((not ok) "no")
                        ((or min-borderline max-borderline) "borderline")
                        (else "yes"))))
     (ly:message
       (format #f "%(sentinel)s lowest=~a highest=~a ok=~a"
               (pitch->lily minp)
               (pitch->lily maxp)
               status))))

#(report-range #{ \\transpose c \\octaveShift { \\transpose \\originalKey \\targetKey \\melody } #})
\\score { { s1 } }
"""
    return template % {"include": include_path, "target": target_key, "octave": octave_shift, "sentinel": RANGE_SENTINEL}

def parse_range_line(line: str) -> dict:
    match = re.search(r'lowest=([^\s]+)\s+highest=([^\s]+)\s+ok=([^\s]+)', line)
    if not match:
        raise ValueError("Could not parse range output")
    return {
        "line": line,
        "lowest": match.group(1),
        "highest": match.group(2),
        "status": match.group(3),
    }

def run_range_check(ly_path: Path) -> dict:
    text = ly_path.read_text()
    target_key = extract_target_key(text)
    octave_shift = extract_octave_shift(text)
    include_path = extract_music_include(text)

    if not target_key:
        raise ValueError(f"targetKey not found in {ly_path}")
    if not include_path:
        raise ValueError(f"_music.ily include not found in {ly_path}")

    content = build_checker(include_path, target_key, octave_shift)
    with tempfile.TemporaryDirectory() as tmpdir:
        tmp_path = Path(tmpdir) / "range-check.ly"
        tmp_path.write_text(content)
        result = subprocess.run(
            ["lilypond", "-dno-print-pages", str(tmp_path)],
            cwd=ly_path.parent,
            capture_output=True,
            text=True,
            timeout=120,
        )
        output = result.stdout + "\n" + result.stderr
        for line in output.splitlines():
            if line.strip().startswith(RANGE_SENTINEL):
                return parse_range_line(line.strip())
        raise RuntimeError("Range output not found in LilyPond output")

def build_range_svg(lowest: str, highest: str) -> str:
    template = """\\version "2.24.4"
\\language "english"

\\paper {
  indent = 0
  line-width = 30\\mm
  ragged-right = ##t
  ragged-last = ##t
  top-margin = 0
  bottom-margin = 0
  left-margin = 0
  right-margin = 0
}

\\layout {
  \\context {
    \\Score
    \\remove "Bar_number_engraver"
  }
  \\context {
    \\Staff
    \\remove "Time_signature_engraver"
    \\consists "Ambitus_engraver"
  }
}

\\new Staff {
  \\clef treble
  <%(lowest)s %(highest)s>1
}
"""
    return template % {"lowest": lowest, "highest": highest}

def process_svg(input_path: Path, output_path: Path) -> None:
    text = input_path.read_text()
    replacements = {
        'fill="#000000"': 'fill="currentColor"',
        'fill="#000"': 'fill="currentColor"',
        'fill:black': 'fill:currentColor',
        'fill="black"': 'fill="currentColor"',
        'stroke="#000000"': 'stroke="currentColor"',
        'stroke="#000"': 'stroke="currentColor"',
        'stroke:black': 'stroke:currentColor',
        'stroke="black"': 'stroke="currentColor"',
    }
    for old, new in replacements.items():
        text = text.replace(old, new)
    output_path.write_text(text)

def write_range_svg(ly_path: Path, lowest: str, highest: str, output_path: Path) -> None:
    content = build_range_svg(lowest, highest)
    with tempfile.TemporaryDirectory() as tmpdir:
        tmp_path = Path(tmpdir) / "range.svg.ly"
        tmp_path.write_text(content)
        temp_base = Path(tmpdir) / "range"
        result = subprocess.run(
            ["lilypond", "-fsvg", "-o", str(temp_base), str(tmp_path)],
            cwd=ly_path.parent,
            capture_output=True,
            text=True,
            timeout=120,
        )
        if result.returncode != 0:
            raise RuntimeError(result.stderr.strip() or "LilyPond SVG generation failed")
        svg_path = temp_base.with_suffix(".svg")
        if not svg_path.exists():
            svg_path = temp_base.with_name(temp_base.name + "-1").with_suffix(".svg")
        if not svg_path.exists():
            raise RuntimeError("Range SVG not found after LilyPond run")
        process_svg(svg_path, output_path)

def main() -> None:
    parser = argparse.ArgumentParser(description="Report min/max pitch range for a Tune_(Key).ly file")
    parser.add_argument("ly_file", type=Path, help="Path to Tune_(Key).ly")
    parser.add_argument("--write-svg", action="store_true", help="Write <Tune>_(Key)_range.svg next to the .ly file")
    parser.add_argument("--output", type=Path, help="Override output path for the range SVG")
    args = parser.parse_args()

    result = run_range_check(args.ly_file)
    print(result["line"])

    if args.write_svg:
        output_path = args.output
        if output_path is None:
            output_path = args.ly_file.with_name(args.ly_file.stem + "_range.svg")
        write_range_svg(args.ly_file, result["lowest"], result["highest"], output_path)

if __name__ == "__main__":
    main()
