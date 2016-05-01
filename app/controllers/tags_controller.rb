class TagsController < ApplicationController
	def show
	  @tag = Tag.find(params[:id])
	end
	def index
		@tags = Tag.all
	end
	def destroy
		Tag.find(params[:id]).destroy
		flash.notice = "Tag Deleted!"
		redirect_to new_article_path
	end
end
