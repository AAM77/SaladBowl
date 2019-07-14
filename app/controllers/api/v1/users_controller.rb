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

    @user = User.new(user_params)
    @user.password = params[:password]
    @user.location_id = 1; # TEMPORARY --- CHANGE LATER!!!


    if @user.save
      session[:user_id] = @user.id
      render json: UserSerializer.new(@user), status: :created
    else
      resp = {
        error: @user.errors.full_messages.to_sentence
      }
      render json: resp, status: :unprocessable_entity
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
    render json: {
      notice: "Successfully deleted"
    }, status: :ok
  end
end

private

  def set_user
    @user = User.find(params[:id])
  end

  ################################################################
  ### LOCATION_ID IS HARD_CODED! !!!!!! ! CHANGE THIS ! !!!!!! ###
  ################################################################

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
