# TODO
# - Add turner id to create action for the redirect
class OptionsController < ApplicationController
  def new
    @option = Option.new()
  end

  def create
    @option = Option.new(options_params)
    if @option.save
      redirect_to slots_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  private
  def options_params
    params.require(:option).permit(
      :name,
      :description
    )
  end
end
