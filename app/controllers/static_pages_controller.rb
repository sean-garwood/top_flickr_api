class StaticPagesController < ApplicationController
  def index
    respond_to do |format|
      format.html
      format.json { render json: { message: "Hello, World!" } }
    end
  end

  private

  def get_flickr
    flickr = Flickr.new
    flickr.photos.search(tags: "ruby, rails")
  end
end
