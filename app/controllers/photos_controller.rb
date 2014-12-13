class PhotosController < ApplicationController
  def edit
    @photo = Photo.find(params[:id])
  end

  def destroy
    album = Album.find(params[:album_id])
    photo = Photo.find(params[:id])
    photo.destroy
    flash[:success] = "Photo deleted"
    redirect_to album_path(album)
  end

  def show
    @photo = Photo.find(params[:id])
  end
end
