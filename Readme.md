### Keybase Accounts List

Creates a list of (almost) all github accounts registered on keybase

---

pseudo code:



for letter in a..z

  results << execute "keybase search [letter]"



for result in results

  githubs << parse "github:(makevoid)"


display githubs
