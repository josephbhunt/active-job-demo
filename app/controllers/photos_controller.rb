class PhotosController < ApplicationController
  def new
    @photo = Photo.new
  end

  def index
    @photos = Photo.all
  end

  def create
    @photo = Photo.new(photo_params)
    @photo.save
    redirect_to photos_path
  end

private

  def photo_params
    params.require(:photo).permit(:title, images: [])
  end
end
