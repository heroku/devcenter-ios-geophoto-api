class PhotosController < ApplicationController
  respond_to :json
  
  def index
    lat, lng = params[:lat], params[:lng]
    if lat and lng
      @photos = Photo.nearby(lat.to_f, lng.to_f)
      respond_with({:photos => @photos})
    else
      @photos = Photo.all
      respond_with({:photos => @photos}.as_json)
      #respond_with({:message => "Invalid or missing lat/lng parameters"}, :status => 406)
    end
  end
  
  def show
    @photo = Photo.find(params[:id])
    
    respond_with(@photo)
  end
  
  def create
    @photo = Photo.create(params[:photo])
    
    respond_with(@photo)
  end
end
