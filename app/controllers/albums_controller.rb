class AlbumsController < ApplicationController
  def new
  end

  def create
    @album = Album.new(album_params)
    @album.user = current_user

    @album.save
    redirect_to @album
  end

  def show
    @album = Album.find(params[:id])
  end

  def index
    @albums = Album.all
  end

  private
    def album_params
      params.require(:album).permit(:name, :description)
    end
end
