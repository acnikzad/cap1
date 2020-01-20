class Api::AlertsController < ApplicationController

  # require http

  def index
    @alerts = Alert.all
    render 'index.json.jb'
  end

  def show
    the_id = params[:id]
    @alert = Alert.find_by(id: the_id)
    p "********************"
   
    p HTTP.headers(:accept => "application/json", :authorization => "Bearer #{ENV['GPS_API_KEY']}")
  .get("https://api.logistimatics.com/api/devices").parse

    render 'show.json.jb'
  end

  def create
    @alert = Alert.create(
      dog_id: params[:dog_id],
      user_id: params[:user_id],
      latitude: params[:latitude],
      longitude: params[:longitude]
      )
    @alert.save
    render 'show.json.jb'
  end

  def update
    the_id = params[:id]
    @alert = Alert.find_by(id: the_id)
    @alert.dog_id = params[:dog_id] || @alert.dog_id
    @alert.user_id = params[:user_id] || @alert.user_id
    render 'show.json.jb'
  end

  def destroy
    the_id = params[:id]
    @alert = Alert.find_by(id: the_id)

    @alert.destroy
    @alert.save

    render 'destroy.json.jb'
  end

end

# $http.get('api/user').then(response => {
#    console.log(response.body);
# })


