class StaticPagesController < ApplicationController
  def index
    return unless params[:user_id]

    respond_to do |format|
      format.html
      format.xml { render xml: @photos }
    end
    @flickr = Flickr.new
    begin
      @photos = @flickr.photos.search(user_id: params[:user_id], format: "rest")
    rescue Flickr::FailedResponse
      @photos = nil
    end
  end
end
