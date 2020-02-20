require "forecast_io"

# configure the Dark Sky API with your API key
ForecastIO.api_key = "758690cc3b7af71afc5d67399123641b"

# do the heavy lifting, use Global Hub lat/long
forecast = ForecastIO.forecast(42.0574063,-87.6722787).to_hash
current_summary = forecast["currently"]["summary"]
current_temp = forecast["currently"]["temperature"]
week_high = forecast["daily"]["data"]
# tomorrow_high

#puts forecast['daily'].keys
# puts forecast["daily"]['data']

for daily in week_high
    puts "A high temperature of #{day_high_temp = daily["temperatureHigh"]} and #{day_sumary = daily["summary"]}"
end



#puts "In Chicago, it is currently #{current_temp} degress and Clear"
#puts "_________________"
#puts "Extended forecast"

# pp = pretty print
# use instead of `puts` to make reading a hash a lot easier
# e.g. `pp forecast`

# Example output:
#

# Extended forecast:
# A high temperature of 36.47 and Possible flurries in the afternoon.
# A high temperature of 33.98 and Mostly cloudy throughout the day.
# A high temperature of 33.94 and Possible light snow until evening.
# A high temperature of 32.73 and Mostly cloudy throughout the day.
# A high temperature of 32.51 and Partly cloudy throughout the day.
# A high temperature of 40.42 and Clear throughout the day.
# A high temperature of 23.21 and Overcast throughout the day.
# A high temperature of 29.12 and Clear throughout the day.