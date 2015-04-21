class PlacesController < ApplicationController

  def index
    @places = Place.all
  end

  def show
    @place = Place.find_by_id(params[:id])
    @reviews = Review.where(:place_id => params[:id]).order("id desc")
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

  def review
    review = Review.new

    review.place_id = params[:id]
    review.stars = params[:stars].to_i
    review.title = params[:title]
    review.body = params[:body]

    review.save

    redirect_to "/places/#{params[:id]}"
  end

end
