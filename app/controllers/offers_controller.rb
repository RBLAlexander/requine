class OffersController < ApplicationController
	def new
	end

	def create
		@offer = Offer.new(offer_params)
		@offer.save

		redirect_to @offer
	end

	private
		def offer_params
			params.require(:offer).permit(:title, :description)
		end
end
