class AddTradeRefToOffers < ActiveRecord::Migration
  def change
    add_reference :offers, :trade, index: true, foreign_key: true
  end
end
