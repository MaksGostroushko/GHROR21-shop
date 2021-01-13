class Product < ApplicationRecord
  validates :name, :image, :description, :price, presence: true
  belongs_to :category
end
