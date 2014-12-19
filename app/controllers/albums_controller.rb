class AlbumsController < ApplicationController
  def new
    @album = Album.new
  end

  def create
    @album = Album.new(album_params)
    @album.user = current_user

    @album.save
    redirect_to album_path(@album)
  end

  def show
    @album = Album.find(params[:id])
  end

  def index
    @albums = Album.all
  end

  def edit
    @album = Album.find(params[:id])
  end

  def update
    @album = Album.find(params[:id])
    if @album.update_attributes(album_params)
      flash[:success] = "Updated album"
      render 'edit'
    else
      render 'edit'
    end
  end

  private
    def album_params
      params.require(:album).permit(:name, :description, :photo,  :photos_attributes => [:id, :photo, :destroy])
    end
end
