class CreateRecipeFood < ActiveRecord::Migration[7.0]
  def change
    create_table :recipe_foods do |t|
      t.integer :quantity, default: 0
      t.references :recipe, null: false, foreign_key:{to_table: :recipes}, index: { name: 'foods_recipes' }
      t.references :user, null: false, foreign_key:{to_table: :users}, index: { name: 'recipe_foods_users' }

      t.timestamps
    end
  end
end
