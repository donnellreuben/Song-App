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

  def show
    @song = Song.find_by(id: params[:id])
    render :show
  end

  def update
    @song = Song.find_by(id: params[:id])
    @song.title = params[:title]
    @song.album = params[:album]
    @song.artist = params[:artist]
    @song.year = params[:year]
    @song.save
    render :show
  end

  def destroy
    @song = Song.find_by(id: params[:id])
    @song.destroy
    render json: { message: "Song was successfully destroyed" }
  end
end
