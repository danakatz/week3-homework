class PlacesController < ApplicationController

  def index
    @places = Place.all
  end

  def show
    @place = Place.find_by_id(params[:id])
  end

  def delete
    place = Place.find_by_id(params[:id])
    place.delete
    redirect_to "/places"
  end

end
