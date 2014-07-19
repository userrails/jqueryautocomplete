class AddressesController < ApplicationController

	respond_to :json, :html

	def index
		@addresses=Address.all
		@json = Address.all.to_gmaps4rails
	end

	def new
		@address = Address.new
	end

	def create
		@address=Address.new(params[:address])
		if @address.save
			UserMailer.welcome_email.deliver
		redirect_to addresses_path
		else
		render 'new'
		end
	end
end
