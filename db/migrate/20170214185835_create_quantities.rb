class CreateQuantities < ActiveRecord::Migration[5.0]
  def change
    create_table :quantities do |t|
      t.float :amount
      t.integer :recipe_id
      t.integer :unit_id
      t.integer :ingredient_id

      t.timestamps
    end
  end
end
