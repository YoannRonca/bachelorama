class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    authorize @user
  end

  def create
    @user = User.new(user_params)
    authorize @user
  end
end
