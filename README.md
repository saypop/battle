# Battle! A Basic Web-App

## Week 3 Pairing Challenge @ Makers Academy

### Design
We were challenged to build an simple fighting game app. We worked in pairs, changing partners everyday.

We were given a list of user stories, these of the user stories that this app satisfies:

```
As two Players,
So we can play a personalised game of Battle,
We want to Start a fight by entering our Names and seeing them

As Player 1,
So I can see how close I am to winning
I want to see Player 2's Hit Points

As Player 1,
So I can win a game of Battle,
I want to attack Player 2, and I want to get a confirmation

As Player 1,
So I can start to win a game of Battle,
I want my attack to reduce Player 2's HP by 10

As two Players,
So we can continue our game of Battle,
We want to switch turns

As Player 1,
So I can see how close I am to losing,
I want to see my own hit points

As Player 1,
So I can lose a game of Battle,
I want Player 2 to attack me, and I want to get a confirmation

As Player 1,
So I can start to lose a game of Battle,
I want Player 2's attack to reduce my HP by 10

As a Player,
So I can Lose a game of Battle,
I want to see a 'Lose' message if I reach 0HP first
```

### Learning Objectives
- Have fun!
- Improve every day as a developer.
- Be able to build a web app.


### Instructions
- `$ git clone https://github.com/saypop/battle`
- `$ cd battle`
- `$ bundle`
- `$ ruby app.rb`
- `$ rackup config.ru`

### Tests
- `$ rspec`

### Tech
- Written in Ruby 2.5.0
- Using the Sinatra web framework
- Server is set up using Rackup
- Tests are done with RSpec and Capybara

### Learnings
- I battled with Capybara at first but now have the hang of it
- I have learned how little I know about HTML and CSS
- I can now build a basic web app!

### Acknowledgements
Throughout the week I worked with Cosmin Mircea, Paul Martin, and Matt Thompson.

### Set-up hints (for posterity)
1.  Create directory
2. `$ bundle init`
3.  Add to gemfile: `gem 'rspec'` and `gem 'sinatra'`
4. `touch app.rb`
5.  In app.rb `require 'sinatra/base'`
6.  Create class `class Battle < Sinatra::Base`
7.  Finish with `run! if app_file == $0`
8. `touch config.ru`
9. `require_relative "./app"` then `run Battle`
10.`rackup config.ru`
11. get local host port
12.`rspec --init`
13. Add `gem 'capybara'` to gemfile
14.`bundle`
15. Add the following to spec-helper
    ```
    ENV['RACK_ENV'] = 'test'

    require File.join(File.dirname(__FILE__), '..', 'app.rb')
    require 'capybara'
    require 'capybara/rspec'
    require 'rspec'
    Capybara.app = Battle
    ```
