class CreateFoodplanners < ActiveRecord::Migration
  def change
    create_table :foodplanners do |t|
      t.string :title
      t.text :breakfast
      t.text :lunch
      t.text :dinner
      t.text :snacks
      t.datetime :date
      t.text :shoppinglist

      t.timestamps null: false
    end
  end
end
