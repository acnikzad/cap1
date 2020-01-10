class Dog < ApplicationRecord
  has_many :alerts
  belongs_to :user


  response = HTTP.headers(:accept => "application/json", :authorization => "Bearer #{ENV['GPS_API_KEY']}")
  .get("https://api.logistimatics.com/api/devices")

  latitude = response.parse[0]["latitude"]
  longitude = response.parse[0]["longitude"]
  address = response.parse[0]["address"]


end
