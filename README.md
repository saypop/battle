# Building a Web App

## Set-up
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
    require 'rspec'```
16.`mkdir spec/features`
17.`touch spec/features/enter_names_spec.rb`
18. Write first feature test
    ```ruby#
    feature 'Enter names' do
      scenario 'submitting names' do
        visit('/')
        fill_in :player_1_name, with: 'Dave'
        fill_in :player_2_name, with: 'Mittens'
        click_button 'Submit'
        expect(page).to have_content 'Dave vs. Mittens'
      end
    end```
19. Create views folder
20. Create index.erb file
21. Update our get '/' to `erb(:index)`
22. Create views directory
23. Create an index.erb
24. Add this `<input type="text" name="player_1_name">`
25. Work through rspec errors
26. Set action in for to go to /names using post method
27. Create a `_post_ '/names'` in app
28. Pass params to instance variables like this `@player_1_name = params[:player_1_name]`
29. Call `erb(;play)`
30. Refactor html to include labels on forms.
31. Commit
32. Enable session in app
33.`session[:player_1_name] = params[:player_1_name]` to store a value in session
34. Write a get '/play' that renders play
35. Extract instance variables
36. Remove erb(:play) from post '/names' and replace it with a redirect to '/play'
37. Commit
38. Satisfy second user story
39. Commit
40. Create a file called web_helpers.rb in spec
41. Require it in spec helper
42. Create a method in there and use it in your specs
43. Commit
44. Satisfy 3rd user story
45. Commit
