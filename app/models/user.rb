class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :orders
  has_many :favorites
  has_many :favorited_products, :through => :favorites, :source => :product

  def admin?
    is_admin
  end

  def is_favoriter_of?(product)
  favorited_products.include?(product)
  end

  def favorite!(product)
    favorited_products << product
  end

  def unfavorite!(product)
    favorited_products.delete(product)
  end

end
