class CreateDrinks < ActiveRecord::Migration
  def change
    create_table :drinks do |t|
      t.string :name
      t.integer :type_id
      t.integer :price
      t.integer :size

      t.timestamps
    end
  end
end
