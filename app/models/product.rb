class Product < ApplicationRecord
  validates :name, :image, :description, :price, presence: true
  belongs_to :category
  has_many :carts
  has_many :comments
  has_one_attached :image
  def to_param
    "#{id}-#{name.gsub(/[^a-z0-9]+/i, '-').downcase}"
  end
  def rating
    return 0 if comments.empty?
    comments.sum(&:rating).to_f / comments.count || 0
  end
  def comment_count
    return 0 if comments.empty?
    comments.count
  end
end
