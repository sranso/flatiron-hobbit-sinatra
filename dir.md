1. let's get started
  http://ashleygwilliams.github.io/ratpack/

2. what are we looking at
Sinatra is a lightweight Ruby framework (vs Rails, a heavyweight Ruby framework)
  sinatra 1,500 lines of code vs rails 10,000
  sinatra is like training wheels for a rails app
Simple Sinatra Application
  Gemfile - contains gems (which are dependencies your app as)(bundler tells server to install them if they're not already)
  Gemfile lock - record of what is installed. means you ran "bundle install". when you run "b.i." restart your server. tells you about your gems and their dependencies on other gems. geneology of gems.
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

- tricks for sinatra
- why use sinatra

SLIDES
1. sinatra
2. Sinatra is a domain-specific language for quickly creating web applications in Ruby with minimal effort:
start w/ nothing, build only parts you need and want
VS rails where you start with block of stone and chip away until you have what you want
both serve diff purposes. sinatra will let you customize all the way, rails will give you everything a certain way all at the beginning.
3. how the files talk to each other
4. necessary files
5. what you can do with it