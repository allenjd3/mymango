class Blog < ApplicationRecord
  belongs_to :user
  has_rich_text :content
  has_rich_text :description
  has_one_attached :featured_image do |attachable|
    attachable.variant :small_square, resize_to_fill: [300, 300]
    attachable.variant :large, resize_to_limit: [600, 875]
  end
end
