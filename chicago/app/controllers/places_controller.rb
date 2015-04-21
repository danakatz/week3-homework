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

  def create
    place = Place.new

    place.title = params[:title]
    place.photo_url = params[:photo_url]
    place.price = params[:price].tr('$', '').to_f * 100
    place.description = params[:description]

    place.save
    redirect_to "/places"
  end

  def edit
    @place = Place.find_by_id(params[:id])
  end

  def update

    place = Place.find_by_id(params[:id])
    place.title = params[:title]
    place.photo_url = params[:photo_url]
    place.price = params[:price].tr('$', '').to_f * 100
    place.description = params[:description]

    place.save
    redirect_to "/places/#{params[:id]}"
  end

end
