class CreateJoinTableQuantityUnit < ActiveRecord::Migration[5.0]
  def change
    create_join_table :quantities, :units do |t|
      t.index [:quantity_id, :unit_id]
      t.index [:unit_id, :quantity_id]
    end
  end
end
