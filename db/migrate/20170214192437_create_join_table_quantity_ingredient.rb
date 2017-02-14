class CreateJoinTableQuantityIngredient < ActiveRecord::Migration[5.0]
  def change
    create_join_table :quantities, :ingredients do |t|
      t.index [:quantity_id, :ingredient_id]
      t.index [:ingredient_id, :quantity_id]
    end
  end
end
