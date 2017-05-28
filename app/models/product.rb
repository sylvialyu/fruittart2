class Product < ApplicationRecord
  mount_uploader :image, ImageUploader
  mount_uploader :avatar, AvatarUploader
  has_many :photos
  has_many :counts, dependent: :destroy
  has_many :favorites
  has_many :favoriters, through: :favorites, source: :user
  accepts_nested_attributes_for :photos
  acts_as_list
  validates_numericality_of :discount, :greater_than => 0, :less_than => 100, :allow_blank => true
end
