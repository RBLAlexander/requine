class AddOfferRefToItems < ActiveRecord::Migration
  def change
    add_reference :items, :offer, index: true, foreign_key: true
  end
end
