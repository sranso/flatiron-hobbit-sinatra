require 'bundler'
Bundler.require

Dir.glob('./lib/*.rb') do |model|
  require model
end

module Name
  class App < Sinatra::Application

    #routes
    get '/' do
      @meal = Mealtime.new
      erb :index
    end

    get '/eat' do
      @meal = Mealtime.new
      erb :eat
    end

  end
end