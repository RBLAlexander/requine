class RenameUserToUserIdInTrades < ActiveRecord::Migration
	def change
		change_table :trades do |t|
			t.rename :user, :user_id
  end
end
