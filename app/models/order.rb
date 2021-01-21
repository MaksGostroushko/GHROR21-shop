class Order < ApplicationRecord
  belongs_to :user
  has_many :carts
  enum status: %i[in_progress ordered canceled]
end
