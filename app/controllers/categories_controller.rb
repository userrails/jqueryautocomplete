class CategoriesController < ApplicationController
	autocomplete :category, :name
	def index
		unless params[:search] == ""
		@categories=Category.search(params[:search])
		end	
	end

	def new
		@category=Category.new
	end

	def create
		@category=Category.new(params[:category])
		if @category.save
		redirect_to categories_path
		else
		render 'new'
		end
	end
end
