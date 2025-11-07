class TurnersController < ApplicationController
  def show
    @turner = Turner.find(params[:id])
    @turner_options = @turner.options
    @options = Option.all
  end
end
