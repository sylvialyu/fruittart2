class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :omniauthable
  validates :username, presence: true, length: {maximum: 25}
  has_many :identifies
  has_many :orders
  has_many :favorites
  has_many :favorited_products, :through => :favorites, :source => :product
  has_many :reviews

  def admin?
    is_admin
  end

  def display_name
    # # 取 email 的前半来显示，如果你也可以另开一个字段是 nickname 让用户可以自己编辑显示名称
    self.email.split("@").first
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

  def self.from_google(access_token, signed_in_resource=nil)
    data = access_token.info
    identify = Identify.find_by(:provider => access_token.provider, :uid => access_token.uid)

    if identify
      return identify.user
    else
      user = User.find_by(:email => access_token.email)
      if !user
        user = User.create(
          username: data["name"],
          email: data["email"],
          image: data["image"],
          password: Devise.friendly_token[0,20]
        )
      end
      identify = Identify.create(
        provider: access_token.provider,
        uid: access_token.uid,
        user: user
      )
    return user
    end
  end

  def self.from_facebook(access_token, signed_in_resoruce=nil)
		data = access_token.info
		identify = Identify.find_by(provider: access_token.provider, uid: access_token.uid)

		if identify
			return identify.user
		else
			user = User.find_by(:email => data.email)
			if !user
				user = User.create(
					username: access_token.extra.raw_info.name,
					email: data.email,
					image: data.image,
					password: Devise.friendly_token[0,20]
				)
			end
			identify = Identify.create(
				provider: access_token.provider,
				uid: access_token.uid,
				user: user
			)
			return user
		end
  end

  def self.from_github(access_token, signed_in_resoruce=nil)
		data = access_token["info"]
		identify = Identify.find_by(provider: access_token["provider"], uid: access_token["uid"])

		if identify
			return identify.user
		else
			user = User.find_by(:email => data["email"])

			if !user

				if data["name"].nil?
					name = data["nickname"]
				else
					name = data["name"]
				end

				user = User.create(
					username: name,
					email: data["email"],
					image: data["image"],
					password: Devise.friendly_token[0,20]
				)
			end

			identify = Identify.create(
				provider: access_token["provider"],
				uid: access_token["uid"],
				user: user
			)

			return user
		end
  end

end
