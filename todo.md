# TO DO

- [] fix the  way to write music in multiple keys

- [] generate a version of the tune /Users/Marc/Projects/violin-music.github.io/tunes/Folk_USA/The-Star-Spangled-Banner in the key of B major

- review the Gymnopedie tunes

- The Kreisler folder still has two full-score .ly files; they will both appear in the index. If you want one renamed/removed or a single canonical version, tell me which to keep.

good but when we open the tune Besame Mucho it shows the default key as "C" but the tune has the statement   "\key d \minor".

i remember that for some of the tunes with multiple keys, we created a function in lilypond that allowed us to have one file with the music in the original key and files with other keys import that file but the score in the imported is not shown thanks to the function we implemented. can you search for tunes that folllow this pattern ?

- update the filters in the index page

- Regenerate index with corrected counts

- Fix `\slide` function to accept numeric arguments (e.g., #5) robustly and update dependent scores

- update the tunes:
  - "Blue Lou"
  - Summertime
  - Minor Swing
  - Nuages
  - J'attendrai
    - ./tunes/Classical/Vocalise_Rachmaninoff
  - Indifférence

Limit reached · resets Dec 31 at 7pm (America/New_York) · contact an admin to increase limits

=> "Cokas Dance"

=> comme une fleur

=>   - Summertime

shouldn't the update-csv-keys-from-ly be part of a visitor pattern?

## DONE

- update the metadata, move it to the right folder and update the index

### loading slowness

there is a problem with the index page. when users open or refresh the index page, it loads very slowly and it starts showing a list of tunes and then seconds later it shows a list of tunes sorted alphabetically. another issue that might be related due to the slowness is that when it's night and when the page is loading, the page appears white and then when it's loaded it switches to dark mode. investigate and make sure that the page loads fast. the generate index should generate a sorted list of tunes.
