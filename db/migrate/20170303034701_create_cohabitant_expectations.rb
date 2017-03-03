class CreateCohabitantExpectations < ActiveRecord::Migration
  def change
    create_table :cohabitant_expectations do |t|
      t.references :cohabitant
      t.string :cities
      t.string :mangal
      t.string :caste
      t.string :age_difference
      t.string :min_height
      t.boolean :divorcee
      t.string :occupation 
      t.string :education
      t.timestamps null: false
    end
  end
end
