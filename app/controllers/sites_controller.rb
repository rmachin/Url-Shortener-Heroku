class SitesController < ApplicationController
  def new
  		@site = Site.new
  	end

  	def create

  		if params[:url].blank? == false
  		s = Site.new
  		url_long = params[:url]
  		url_short = s.generateshort
  		s.url_short = url_short
  		@save_url_short = s.url_short
  		s.url_long = url_long
  		@save_url_long = s.url_long
  		s.save
  		render 'show'

  	else
  		render 'new'

  	end

  	end

  	def show
  		@save_url_short
  		p = params[:url_short]
    	if @site = Site.find_by(url_short:p)
  		redirect_to @site.url_long
      else
  	redirect_back(fallback_location: root_path)
  		end
  	end
  end
