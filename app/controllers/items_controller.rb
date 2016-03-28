class ItemsController < ApplicationController
	def new
	end

	def create
		@item = Item.new(params.require(item_params)
		@item.save

		redirect_to @item
	end

	private
		def item_params
			params.require(:item).permit(:title, :description)
		end
end
