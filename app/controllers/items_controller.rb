class ItemsController < ApplicationController
	#def new
	#end
	def edit
	  @trade = Trade.find(params[:trade_id])
	  @item = @trade.item.find(params[:id])
	end

	def create
		@trade = Trade.find(params[:trade_id])
		@item = @trade.items.create(item_params)
		if @item.save
			redirect_to trade_path(@trade)
		else
			render 'edit'
		end
	end

# Editing nested items currently busted, TODO fix this
#	def update 
#		@trade = Trade.find(params[:id])
#		@item = @trade.items.create(item_params)
#		if @item.update(item_params)
#			redirect_to @trade
#		else
#			render 'edit'
#		end
#	end

  def destroy
    @trade = Trade.find(params[:trade_id])
    @item = @trade.items.find(params[:id])
    @item.destroy
    redirect_to trade_path(@trade)
  end


	private
		def item_params
			params.require(:item).permit(:title, :description, :image)
		end
end
