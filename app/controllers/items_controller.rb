class ItemsController < ApplicationController
	#def new
	#end

	def create
		@trade = Trade.find(params[:trade_id])
		@item = @trade.items.create(item_params)
		@item.save

		redirect_to trade_path(@trade)
	end

	private
		def item_params
			params.require(:item).permit(:title, :description)
		end
end
