class RewardsController < ApplicationController
  #before_action :authenticate_user

  def index
    @rewards = Reward.all
    render :index
  end

  def show
    @reward = Reward.find_by(id: params[:id])
    render :show
  end
end
