class AddTradeRefToItems < ActiveRecord::Migration
  def change
    add_reference :items, :trade, index: true, foreign_key: true
  end
end
