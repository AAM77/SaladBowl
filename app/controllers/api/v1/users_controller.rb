class Api::V1::UsersController < ApplicationController
  before_action :set_user, only: [:show, :update, :destroy]
  # GET /users
  def index
    @users = User.all
    render json: @users
  end

  # GET /users/:id
  def show
    render json: @user
  end

  # POST /users
  def create
    existing_username = User.find_by(username: form_data[:username])
    existing_email = User.find_by(email: form_data[:email])

    @user = User.new(form_data)
    #byebug

    if existing_username || existing_email
      render json: @user.errors, status: "Invalid Username or Email. Choose something else."
    else
      if @user.save
        render json: @user, status: :created
      else
        render json: @user.errors, status: :unprocessable_entity
      end
    end
  end

  # PATCH/PUT /users/1
  def update
    if @user.update(user_params)
      render json: @user, status: :accepted
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  # DELETE /users/1
  def destroy
    @user.destroy
  end
end

private

  def set_user
    @user = User.find(params[:id])
  end

  ################################################################
  ### LOCATION_ID IS HARD_CODED! !!!!!! ! CHANGE THIS ! !!!!!! ###
  ################################################################
  def form_data
    {
      location_id: 1,
      first_name: params[:first_name],
      last_name: params[:last_name],
      username: params[:username].downcase,
      email: params[:email].downcase,
      password: params[:password],
      address: params[:address],
      zipcode: params[:zipcode]
    }
  end

  def user_params
    params.require(:user).permit(
      :location_id,
      :first_name,
      :last_name,
      :username,
      :email,
      :password,
      :address,
      :zipcode
      )
  end
