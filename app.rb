require 'bundler'
Bundler.require

Dir.glob('./lib/*.rb') do |model|
  require model
end

module Name
  class App < Sinatra::Application

    #routes
    get '/' do
      @today = get_time

      @meal = Mealtime.new(@today)
      erb :index
    end

    get '/eat' do
      @today = get_time
      @meal = Mealtime.new(@today)
      erb :eat
    end

    helpers do
      def get_time
        Timezone::Configure.begin do |c|
          c.username = 'sranso'
        end

        location = request.location # gives location of request
        lat = location.latitude # gives lat
        long = location.longitude # gives long

        timezone = Timezone::Zone.new(:latlon => [lat, long])
        timezone.time(Time.now)
      end
    end

  end
end