class FoodsController < ApplicationController
  # load_and_authorize_resource
  # before_action :authenticate_user!, only: [:create]

  def index
    # @food = Food.includes(:foods).find(params[:user_id])
  end

  def new
    @user = current_user
    @food = Food.new
  end

  def create
    @user = current_user
    @food = Food.new(params[:food])
    @food.user_id = @user.id
    @food.save
    redirect_to user_foods_path(@user)
  end

  private

  def destroy
    @food = Food.find(params[:id])
    authorize! :destroy, @food
    @food.destroy
    redirect_to user_foods_path(current_user), notice: 'Food was successfully deleted.'
  end
end
