class ArtistsController < ApplicationController

  def index
    @artists = Artist.all
  end 

  def new
  end 

  def create
    artist = Artist.create(artist_params)
    redirect_to "/artists"
  end 

  def edit
    @artist = Artist.find(params[:id])
  end

  def update
    artist = Artist.find(params[:id])
    artist.update(artist_params)
    redirect_to "/artists"
  end 

  #should make a private params. Private methods are only availabe
  #inside the class. Because we only need to use artist_params 
  #in the artists_controller, it is a good use case for private
  #methods. Security advantage, good encapsulation.
  private
  def artist_params
    params.permit(:name)
  end


end