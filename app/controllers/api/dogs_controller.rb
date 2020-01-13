class Api::DogsController < ApplicationController

  def index
    @dogs = Dog.all
    render 'index.json.jb'
  end

  def show
    the_id = params[:id]
    @dog = Dog.find_by(id: the_id)
    render 'show.json.jb'
  end

  def create 
    @dog = Dog.create(
    name: params[:name],
    color: params[:color],
    breed: params[:breed],
    age: params[:age],
    weight: params[:weight],
    behavior_traits: params[:behavior_traits],
    image_url: params[:image_url],
    user_id: params[:user_id],
    bio: params[:bio],
      )
    @dog.save
    render 'show.json.jb'

    # if @dog.save
    #   render 'show.json.jb'
    # else
    #   render json: {errors: @dog.errors.full_messages},
    #     status: :unprocessable_entity 
    # end
  end

  def update
    the_id = params[:id]
    @dog = Dog.find_by(id: the_id)
    @dog.name = params[:name] || @dog.name
    @dog.color = params[:color] || @dog.color
    @dog.breed = params[:breed] || @dog.breed
    @dog.age = params[:age] || @dog.age
    @dog.weight = params[:weight] || @dog.weight
    @dog.behavior_traits = params[:behavior_traits] || @dog.behavior_traits
    @dog.image_url = params[:image_url] || @dog.image_url
    @dog.user_id = params[:user_id] || @dog.user_id
    @dog.bio = params[:bio] || @dog.bio

    @dog.save
    render 'show.json.jb'

    # if @dog.save
    #   render 'show.json.jb'
    # else
    #   render json: {errors: @dog.errors.full_messages},
    #     status: :unprocessable_entity 
    # end
  end

  def destroy
    @dog = Dog.find_by(id: params[:id])

    @dog.destroy
    @dog.save

    render 'destroy.json.jb'
  end

  def real_time_location

    response = HTTP.headers(:accept => "application/json", :authorization => "Bearer #{ENV['GPS_API_KEY']}")
    .get("https://api.logistimatics.com/api/devices")

    @dog.latitude = response.parse[0]["latitude"].to_f
    @dog.longitude = response.parse[0]["longitude"].to_f
    @dog.address = response.parse[0]["address"]

    # NW corner 38.54524, -121.44186
    # NE corner 38.54525, -121.44168
    # SW corner 38.5449, -121.44182
    # SE corner 38.5449, -121.44167

    # if latitude > 38.5425 || latitude < 38.5449 || longitude < -121.44182 || longitude > -121.44168

    # end
  end
end
