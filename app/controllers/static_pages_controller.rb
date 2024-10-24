class StaticPagesController < ApplicationController
  def index
    respond_to do |format|
      format.html
      format.xml { render xml: @photos }
    end
    @flickr = Flickr.new
    @photos = @flickr.photos.search(user_id: static_page_params[:user_id], format: "rest")
  end

  private

  def static_page_params
    params.fetch(:static_page, {}).permit(:user_id)
  end
end
