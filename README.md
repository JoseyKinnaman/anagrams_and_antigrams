# _Anagrams vs Antigrams_
## _By: Jozy Kinnaman_
## Description

_This application will allow the user to enter two words and check if they are an antigram vs anagram._

## Setup


* _Clone repository from Github: https://github.com/Jozypants/anagrams_and_antigrams.git_
* _Open the repository folder in the terminal_
* _cd into the root directory and bundle the project_
* _run tests_
* _run any script files in the root directory._

## Known Bugs
_No known bugs at this time_

## Technology
* _Git_
* _GitHub_
* _Ruby_
* _Rspec_
* _Pry_


## Specs

|Behavior|Input|Output|
| :-----|:-----|:-----|
| The method checks if 2 words are anagrams.| Input: tea vs eat | Output: "These words are anagrams."|
| The method accounts for the possibility that words might have different cases but should still be anagrams.| Input: Tea vs Eat | Output: "These words are anagrams."|
| The method checks if the inputs are words. | Input: "yurb" vs "ruby" | Output: "You need to input actual words!" |
| The method checks if phrases aren't anagrams, then the method should check whether they are actually "antigrams.". | Input: "hi" vs "bye"| Output: "These words have no letter matches and are antigrams."|
| The program removes all non-characters from a string. | Input: "tea!", "eat." | Output: "tea" vs "eat"|
| The method will account for multiple words being anagrams or "antigrams.". | Input: "stop, eat, team" | Output: "These words are anagrams." |


## Legal

#### MIT License

### Copyright (c) 2020 Jozy Kinnaman

