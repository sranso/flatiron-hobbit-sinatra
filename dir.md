1. let's get started
  http://ashleygwilliams.github.io/ratpack/

2. what are we looking at
Simple Sinatra Application
  Gemfile - contains gems
  Gemfile lock - record of what is installed. means you ran "bundle install". when you run "b.i." restart your server
  app.rb - routes, program logic. AKA "controller"
  config.ru - rack up file. helps us start our local server.
  lib - ruby files
  views - visual output
    layout.erb - structure
    index.erb - content
    something.erb - content
  public - static assets
    styles 
    images

3. how does it work
  ORDER OF EVENTS
  1 browser sends request to server (e.g. localhost:9393/)
  2 route is matched with the request in app.rb (e.g. get '/' do...)
  3 route bloc accesses the appropriate model/library
  4 model sends data back to route, stores in var
  5 data is rendered in view and returned as string
  6 string response sent back to client (it is not dynamic)

4. let's use it
  1 we're doing hobbit mealtime site
  2 make (copy/paste?) class meal.rb
  3 app.rb make route and link to erb file
  4 edit erb file
  5 link to custom.css
  6 see it live!

5. and there you have it! any questions?