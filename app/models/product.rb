class Product < ApplicationRecord
include Notifications
  has_one_attached :feature_image
  has_rich_text :description
  validates :name, presence: true
  validates :inventory_count, numericality: { only_integer: true, greater_than_or_equal_to: 0, less_than_or_equal_to: 1000 }, allow_nil: true
end
