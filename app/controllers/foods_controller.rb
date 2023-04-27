class FoodsController < ApplicationController
  # load_and_authorize_resource
  # before_action :authenticate_user!, only: [:create]
  #before_action :set_food, only: %i[show edit update destroy]
  def index
    @foods = Food.all
  end

  def new
    @food = Food.new
  end

  def create
    @food = Food.new(
      name: params[:food][:name],
      measurement_unit:params[:food][:measurement_unit],
      quantity: params[:food][:quantity], 
      price: params[:food][:price],
      user_id: 1)
    @food.save
    redirect_to foods_path()
  end

  def destroy
    @food = Food.find(params[:id])
    #authorize! :destroy, @food
    @food.destroy
    redirect_to foods_path(), notice: 'Food was successfully deleted.'
  end
end
