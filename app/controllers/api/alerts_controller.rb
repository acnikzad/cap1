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
   

    # p HTTP.auth.get("Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpYXQiOiAxNTc1NDE1ODYwLCAianRpIjogNTc3OTEsICJvcmdhbml6YXRpb25faWQiOiAyNzM2Mn0.Oh7gM6wkHHattSuoyS2tvfu1nzSrJL2ydASRSFiblMw").get("https://api.logistimatics.com/api/devices")
   
    p HTTP.headers(:accept => "application/json", :authorization => "Bearer #{ENV['GPS_API_KEY']}")
  .get("https://api.logistimatics.com/api/devices").parse

    render 'show.json.jb'
  end

  def create
    @alert = Alert.create(
      dog_id: params[:dog_id],
      user_id: params[:user_id]
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

