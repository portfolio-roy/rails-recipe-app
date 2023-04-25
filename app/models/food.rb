class Food < ApplicationRecord
  belongs_to :user, class_name: 'User'

  validates :name, presence: true, length: { maximum: 40 }
  validates :measurement_unit, presence: true, length: { maximum: 20 }
  validates :price, presence: true,
                    numericality: {
                      only_integer: true, greater_than: 0
                    }
  validates :quantity, presence: true,
                       numericality: {
                         only_integer: true, greater_than: 0
                       }
end
