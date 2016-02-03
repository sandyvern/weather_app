require 'yahoo_weatherman'

puts "Please enter the zipcode of your current location."
location = gets.chomp

client = Weatherman::Client.new
weather = client.lookup_by_location(location)

puts "The forcast for #{weather.location['city']} is currently #{weather.condition['text']}."

i=1
while (i<5)
  day = "On #{weather.forecasts[i]['day']}"
  if (i==1)
      day = "Tomorrow"
end
  
puts "The predicted forecast for #{day} calls for temperatures between #{weather.forecasts[i]['low']} and #{weather.forecasts[i]['high']}. The forecast is #{weather.forecasts[i]['text']}."
   i+=1
end
