class StaticPagesController < ApplicationController
  def index
    flickr = Flickr.new

    if params[:flickr_id]
      @photo_list = flickr.people.getPublicPhotos :api_key => ENV['FLICKR_API_KEY'], :user_id => params[:flickr_id]
    end
  end
end
