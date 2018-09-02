class CreatePlants < ActiveRecord::Migration[5.2]
  def change
    create_table :plants do |t|
      t.string :name
      t.string :division
      t.string :family

      t.timestamps
    end
  end
end
