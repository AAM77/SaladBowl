class Api::V1::StatesController < ApplicationController
  before_action :set_state, only: [:show, :destroy]

  def index
    @states = State.all
    render json: @states
  end

  def show
    render json: @location
  end

  def destroy
    @state.destroy
  end
end

private

  def set_state
    @state = State.find(params[:id])
  end

  def state_params
    params.require(:state).permit(
      :long_name,
      :short_name
    )
  end
