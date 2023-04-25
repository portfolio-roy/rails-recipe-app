class RecipeFood < ApplicationRecord
  belongs_to :recipe, class_name: 'Recipe'
  belongs_to :food

  validates :quantity, presence: true,
                       numericality: {
                         only_integer: true, greater_than: 0
                       }
end
