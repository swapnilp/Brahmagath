class CreateCohabitantHoroscops < ActiveRecord::Migration
  def change
    create_table :cohabitant_horoscops do |t|
      t.string :rashi
      t.string :nakshtra
      t.string :charan
      t.string :nadi
      t.string :gan
      t.string :birth_place
      t.datetime :birth_time
      t.boolean :mangal
      t.string :devak
      t.references :cohabitant
      t.timestamps null: false
    end
  end
end
