class SlotsController < ApplicationController
  def index
    @slots = Slot.all
  end

  def show
    @slot = Slot.find(params[:id])
    @turners = @slot.turners
  end

  def new
    @slot = Slot.new
  end

  def create
    @slot = Slot.new(slot_params)
    if @slot.save
      redirect_to @slot
    else
      render :new, staus: :unprocessable_entity
    end
  end

  def edit
    @slot = Slot.find(params[:id])
    @turners = @slot.turners
  end

  private

  def slot_params
    params.require(:slot).permit(
      :name,
      :description
    )
  end
end
