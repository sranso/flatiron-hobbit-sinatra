require 'bundler'
Bundler.require

Dir.glob('./lib/*.rb') do |model|
  require model
end

module Name
  class App < Sinatra::Application

    #routes
    get '/' do
      Timezone::Configure.begin do |c|
        c.username = 'sranso'
      end

      location = request.location # gives location of request
      lat = location.latitude # gives lat
      long = location.longitude # gives long

      timezone = Timezone::Zone.new(:latlon => [lat, long])
      @today = timezone.time(Time.now)

      @meal = Mealtime.new(@today)
      erb :index
    end

    get '/eat' do
      @meal = Mealtime.new
      erb :eat
    end

  end
end