class TagsController < ApplicationController

	before_filter :require_login, only: [:destroy]
	def show
		@tag = Tag.find(params[:id])
	end

	def index
		@tag = Tag.all 
	end

end
