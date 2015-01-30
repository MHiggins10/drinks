class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.string :content
      t.integer :user_id
      t.integer :price
      t.string :drinks_id

      t.timestamps
    end
  end
end
