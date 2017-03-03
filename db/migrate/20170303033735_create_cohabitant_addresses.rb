class CreateCohabitantAddresses < ActiveRecord::Migration
  def change
    create_table :cohabitant_addresses do |t|
      t.references :cohabitant
      t.string :address 
      t.string :email
      t.string :mobile_1
      t.string :mobile_2
      t.string :mobile_3
      
      t.timestamps null: false
    end
  end
end
