# Word Definer

#### Ruby Course: Independent Project/Code Review
 Friday, July 6th, 2018

#### Craig Wann

## Description
A web application where a word list can be created and definitions added to the words in the list.

## Setup Requirements
1. Clone the repo from:  https://github.com/craigwann/word_definer.git
1. Using Terminal navigate to the root directory
1. enter "ruby app.rb"
1. open web browser and enter URL http://localhost:4567/

1. **OR** open https://whispering-retreat-34079.herokuapp.com in browser

## Specs/Steps
| Behavior	| INPUT	| OUTPUT |
| :----------:| :-----: | :-------:|
|add word to word list on input.rb | "dog" | *true* |   
|add word and definition | "dog", "four legged mammal" | *true* |
|click on word in list to see definition of word | click "dog" | *"four legged mammal" * |
|add definitions to word | "not a cat", click 'Add definitin' button | *"four legged mammal", "not a cat" * |
|return to word list page | click button 'Word List' | *true * |



## Technologies Used
1. Ruby 2.4.1
1. Ruby gem Sinatra
1. Ruby gem rspec
1. Ruby gem pry
1. Ruby gem capybara
1. Heroku

## License

This software is licensed under the MIT license.

Copyright (c)2018 **Craig Wann**
