class AddDetailToDrinks < ActiveRecord::Migration
  def change
    add_column :drinks, :latitude, :float

    add_column :drinks, :longitude, :float

  end
end
