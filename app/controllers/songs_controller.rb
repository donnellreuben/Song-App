class SongsController < ApplicationController
  protect_from_forgery with: :exception, unless: -> { request.format.json? }  
  def index
    @songs = Song.all
    render :index
  end

  def first_song
    @songs = Song.first
    render json: Song.first
  end

  def create
    @song = Song.create(
      title: params[:title],
      album: params[:album],
      artist: params[:artist],
      year: params[:year],
    )
    render :show
  end
end
