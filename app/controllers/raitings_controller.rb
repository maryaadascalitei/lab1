class RatingsController < ApplicationController

  def update
    @rating = Rating.find(params[:id])
    @car = @rating.car
    if @rating.update_attributes(score: params[:score])
      respond_to do |format|
        format.js
      end
    end
  end

  def new
  	@rating = Rating.new(rating_params)
  end

end