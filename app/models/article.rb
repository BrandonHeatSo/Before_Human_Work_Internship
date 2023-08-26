class Article < ApplicationRecord
  belongs_to :user
  mount_uploader :image, ImageUploader

  validates :title, presence: true, length: { maximum: 10 }
  validates :content, presence: true
end
