class CreateCohabitants < ActiveRecord::Migration
  def change
    create_table :cohabitants do |t|
      t.string :first_name, null: false
      t.string :last_name, null: false
      t.string :middle_name, null: false
      t.date :date_of_birth, null: false
      t.string :sub_cast
      t.string :married_status
      t.float :height
      t.float :weight
      t.string :blood_group
      t.string :complexion
      t.boolean :is_physical_disabilities
      t.string :physical_disabilities
      t.string :diet
      t.boolean :spectacles, defaule: false
      t.boolean :lens, defaule: false
      t.string :mobile
      t.string :reg_id
      
      
      t.timestamps null: false
    end
  end
end
