# TODO
# - Add slot id to create action for the redirect
# - assign turner to slot on creation

class TurnersController < ApplicationController
  def show
    @turner = Turner.find(params[:id])
    @turner_options = @turner.options
    @options = Option.all
  end

  def new
    @turner = Turner.new
  end

  def create
    @turner = Turner.new(turner_params)
    if @slot.save
      redirect_to slots_path
    else
      render :new, staus: :unprocessable_entity
    end
  end
end
