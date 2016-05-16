class FoodsController < ApplicationController
  
  def index
    @search = Food.search(params[:q])
    @food = @search.result
  end

  def show
    @food = Food.find(params[:id])
  end

  private

  def food_params
    params.require(:food).permit(:name, :description)
  end
end
