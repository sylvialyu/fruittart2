class Product < ApplicationRecord
  mount_uploader :image, ImageUploader
  mount_uploader :avatar, AvatarUploader
  has_many :photos
  has_many :counts, dependent: :destroy
  has_many :favorites
  has_many :favoriters, through: :favorites, source: :user
  accepts_nested_attributes_for :photos
  has_many :reviews

  acts_as_list
  validates_numericality_of :discount, :greater_than => 0, :less_than => 100, :allow_blank => true
  validates_presence_of :friendly_id
  validates_uniqueness_of :friendly_id
  validates_format_of :friendly_id, :with => /\A[a-z0-9\-]+\z/
  before_validation :generate_friendly_id, :on => :create

  def to_param
   self.friendly_id
  end

  def find_review(user)
    self.reviews.where( :user_id => user.id ).first
  end
  
  protected

  def generate_friendly_id
   self.friendly_id ||= SecureRandom.uuid
  end

end
