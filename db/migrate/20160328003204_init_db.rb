class InitDb < ActiveRecord::Migration
  def change
 	  create_table :trades do |t|
		t.string :title
   		t.text :description
   		t.boolean :accept_cash_adjust
   		t.boolean :premium
   		t.integer :times_viewed
   		t.string :uri
   		t.string :tags

   		t.timestamps null: false
   	end
   	
   	create_table :offers do |t|
   		t.string :title
   		t.text :description
   		t.integer :cash_adjust
   		t.boolean :seen
   		t.string :uri
   	
   		t.timestamps null: false
   	end
 	
 		create_table :items do |t|
 			t.string :title
 			t.text :description
 			t.boolean :accepted

  		t.timestamps null: false
		end
	add_reference :offers, :trade, index: true, foreign_key: true
	add_reference :items, :offer, index: true, foreign_key: true
	add_reference :items, :trade, index: true, foreign_key: true
	end
end

