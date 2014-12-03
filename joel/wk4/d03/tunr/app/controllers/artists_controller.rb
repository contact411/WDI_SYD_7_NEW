class ArtistsController < ApplicationController
  before_action :find_artist, only: [:show, :edit, :update, :destroy]

  def index
    @artists = Artist.all
  end

  def new
    @artist = Artist.new
  end

  def show
  end

  def edit
  end

  def create
    @artist = Artist.new artist_params
    if @artist.save
      redirect_to artist_path(@artist)
    else
      render :new
    end
  end


private
  def find_artist
    @artist = Artist.find params[:id]
  end

  def artist_params
    params.require(:artist).permit(:name, :hometown, :bio, :label)
  end
end
