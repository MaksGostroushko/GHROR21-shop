class Category < ApplicationRecord
  has_many :products
  validates :name, presence: true
  def to_param
    "#{id}-#{name.gsub(/[^a-z0-9]+/i, '-')}"
  end
end
