class AddUserIdToCohabitant < ActiveRecord::Migration
  def change
    add_column :cohabitants, :user_id, :integer
  end
end
