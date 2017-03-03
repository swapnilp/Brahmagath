# -*- coding: utf-8 -*-
class CreateCohabitantFamilies < ActiveRecord::Migration
  def change
    create_table :cohabitant_families do |t|
      t.references :cohabitant
      t.boolean :has_mother
      t.string :mother_name
      t.boolean :has_father
      t.string :father_name
      t.integer :brothers
      t.integer :married_brothers
      t.integer :sisters
      t.integer :married_sisters
      t.string :parents_occupation
      t.string :surnames_of_relatives
      t.string :native_district
      t.string :native_taluka
      t.string :family_wealth
      t.string :mamas_name
      
      t.timestamps null: false
    end
  end
end
