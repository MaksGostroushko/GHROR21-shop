class Product < ApplicationRecord
  validates :name, :image, :description, :price, presence: true
  belongs_to :category
  def to_param
    "#{id}-#{name.gsub(/[^a-z0-9]+/i, '-').downcase}"
  end
end
