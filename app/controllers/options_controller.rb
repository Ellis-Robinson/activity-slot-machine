class OptionsController < ApplicationController
  def new
    @option = Option.new()
  end

  def create
    @option = Option.new(options_params)
    if @option.save
      # TODO
      # Change this once i can access the turner ID
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
