class KitchensController < ApplicationController
  def delete
    @kitchen = Kitchen.find(params[:id])
    @kitchen.destroy
  end

  def show
    @kitchen = Kitchen.find(params[:id])
  end

  private

  def kitchen_params
    params.require(:kitchen).permit(:name, :address, :capacity, :price, :equipment)
  end
end
