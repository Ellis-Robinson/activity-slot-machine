class TurnersController < ApplicationController
  def show
    @turner = Turner.find(params[:id])
    @options = @turner.options
  end
end
