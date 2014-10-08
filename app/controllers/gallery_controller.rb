class GalleryController < ApplicationController
	before_action :authenticate_user!
  def index
  	
  end

  def store_image
		s = ScreenShot.new(url: params[:page_url])
		s.gen_screenshot!
		redirect_to root_url
  end
end
