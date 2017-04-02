class AddGenderToCohabitant < ActiveRecord::Migration
  def change
    add_column :cohabitants, :gender, :string
  end
end
