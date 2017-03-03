class CreateCohabitantEducations < ActiveRecord::Migration
  def change
    create_table :cohabitant_educations do |t|
      t.references :cohabitant
      t.string :area
      t.string :education
      t.string :occupation
      t.string :occupation_city
      t.float :income
      t.boolean :is_income_annua, default: true
      
      t.timestamps null: false
    end
  end
end
