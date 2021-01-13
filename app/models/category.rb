class Category < ApplicationRecord
  has_many :products
  validates :name, presence: true
  def name_category
    "#{name}"
  end
end
