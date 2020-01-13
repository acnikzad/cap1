class Api::UsersController < ApplicationController

  def index
    @users = User.all
    render 'index.json.jb'
  end

  def show
    the_id = params[:id]
    @user = User.find_by(id: the_id)
    render 'show.json.jb'
  end

  def create
    @user = User.new(
    first_name: params[:first_name],
    last_name: params[:last_name],
    email: params[:email],
    password: params[:password],
    password_confirmation: params[:password_confirmation],
    phone_number: params[:phone_number],
    home_address: params[:home_address]
      )
    # @user.save
    # render 'show.json.jb'

    if @user.save
      render json: { message: "User created successfully" }, status: :created
    else
      render json: { errors: @user.errors.full_messages }, status: :bad_request
    end
  end

  def update 
    the_id = params[:id]
    @user = User.find_by(id: the_id)
    @user.first_name = params[:first_name] || @user.first_name
    @user.last_name = params[:last_name] || @user.last_name
    @user.email = params[:email] || @user.email
    @user.password = params[:password] || @user.password
    @phone_number = params[:phone_number] || @user.phone_number
    @home_address = params[:home_address] || @user.home_address

    @user.save
    render 'show.json.jb'
  end

  def destroy
    @user = User.find_by(id: params[:id])

    @user.destroy
    @user.save

    render 'destroy.json.jb'
  end

  def current_dog_owner
    current_user
    render 'show.json.jb'
  end

end
