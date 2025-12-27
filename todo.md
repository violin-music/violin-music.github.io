# TO DO

- review the Gymnopedie tunes 

- 

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
  - Indifférence

Limit reached · resets Dec 31 at 7pm (America/New_York) · contact an admin to increase limits


=> "Cokas Dance"

=>   - Summertime



shouldn't the update-csv-keys-from-ly be part of a visitor pattern?


## DONE 

### loading slowness

there is a problem with the index page. when users open or refresh the index page, it loads very slowly and it starts showing a list of tunes and then seconds later it shows a list of tunes sorted alphabetically. another issue that might be related due to the slowness is that when it's night and when the page is loading, the page appears white and then when it's loaded it switches to dark mode. investigate and make sure that the page loads fast. the generate index should generate a sorted list of tunes.
