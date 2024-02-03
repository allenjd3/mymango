class Blog < ApplicationRecord
  belongs_to :user
  has_rich_text :content
  has_rich_text :description
  has_one_attached :featured_image
end
