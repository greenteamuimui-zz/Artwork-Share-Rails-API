class ArtworksController < ApplicationController

  def index
    @artwork = Artwork.all
    render json: @artwork
  end

  def create
    @artwork = Artwork.new(artwork_params)

    if @artwork.save
      render json: @artwork
    else
      render(
        json: @artwork.errors.full_messages, status: :unprocessable_entity
      )
    end
  end

  def update
    @artwork = Artwork.find_by_id(params[:id])
    if @artwork
      @artwork = Artwork.update(params[:id], artwork_params)
      render json: @artwork
    else
      render json: ["Artwork not found"], status: :not_found
    end
  end

  def show
    @artwork = Artwork.find_by_id(params[:id])
    if @artwork
      render json: @artwork
    else
      render json: ["Artwork not found"], status: :not_found
    end
  end

  def destroy
    @artwork = Artwork.find_by_id(params[:id])
    if @artwork
      @artwork.destroy
      render json: @artwork
    else
      render json: ["Artwork not found"], status: :not_found
    end
  end

  private

  def artwork_params
    params.require(:artwork).permit(:title, :image_url, :artist_id)
  end
end
