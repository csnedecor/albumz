class PhotosController < ApplicationController
  def edit
    @photo = Photo.find(params[:id])
  end

  def destroy
    album = Album.find(params[:album_id])
    photo = Photo.find(params[:id])
    photo.destroy
    flash[:success] = "Photo deleted"
    redirect_to edit_album_path(album)
  end

  def show
    @photo = Photo.find(params[:id])
  end

  # def index
  #   @album = Album.find(params[:album_id])
  #   @photo = @album.photos.build.save
  # end

  def new
    @album = Album.find(params[:album_id])
  end

  def create
    @album = Album.find(params[:album_id])
    @photo = @album.photos.build(params[:photo])
    if @photo.save
      flash[:success] = "Photo added!"
      redirect_to edit_album_path(@album)
    else
      flash[:error] = "Photo was not added"
    end
  end

end
