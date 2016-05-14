class FoodsController < ApplicationController
  
  def index
    @foods = Food.all 
  end

  def show
    @food = Food.find(params[:id])
  end

  def new
    @food = Food.new
  end

  private

  def food_params
    params.require(:food).permit(:name, :description)
  end
end
