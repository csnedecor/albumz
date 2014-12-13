class PhotosController < ApplicationController
  def edit
    @photo = Photo.find(params[:id])
  end
end
