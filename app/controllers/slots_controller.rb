class SlotsController < ApplicationController
  def index
    @slots = Slot.all
  end

  def show
    @slot = Slot.find(params[:id])
    @turners = @slot.turners
  end
end
