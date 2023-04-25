class CreateFoods < ActiveRecord::Migration[7.0]
  def change
    create_table :foods do |t|
      t.string :name
      t.string :measurement_unit
      t.integer :quantity, default: 0
      t.integer :price, default: 0
      t.references :user, null: false, foreign_key:{to_table: :users}, index: { name: 'foods_users' }

      t.timestamps
    end
  end
end
