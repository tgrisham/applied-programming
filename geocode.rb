require "sinatra"
require "sinatra/reloader"
require "geocoder"
def view(template); erb template.to_sym; end
before { puts "Parameters: #{params}" }                                     

get "/" do
  view "geocode"
end

get "/map" do
    @location = params["location"]
    @results = Geocoder.search("paris")
    view "map"
end