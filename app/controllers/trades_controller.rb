class TradesController < ApplicationController
	def index
		@trades = Trade.all
	end

	def show
		@trade = Trade.find(params[:id])
	end

	def new
		@trade = Trade.new
	end

	def edit
	  @trade = Trade.find(params[:id])
	end

	def create
		byebug
		@trade = current_user.trades.build(trade_params)
		if @trade.save
			redirect_to @trade
		else
			render 'new'
		end
	end

	def update 
		@trade = Trade.find(params[:id])

		if @trade.update(trade_params)
			redirect_to @trade
		else
			render 'edit'
		end
	end

	private
		def trade_params
			params.require(:trade).permit(:title, :description, :tags, :user_id)
		end
end
