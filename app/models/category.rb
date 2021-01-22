class Category < ApplicationRecord
  has_many :products, dependent: :destroy
  validates :name, presence: true
  has_one_attached :image
  def to_param
    "#{id}-#{name.gsub(/[^a-z0-9]+/i, '-').downcase}"
  end
  has_many :subcategories, :class_name => "Category", :foreign_key => "parent_id", :dependent => :destroy
  belongs_to :parent_category, :class_name => "Category"
end
