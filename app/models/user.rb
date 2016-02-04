class User < ActiveRecord::Base

  has_many :reviews
  
  has_secure_password

  validates :password, length: { in: 6..20 }, on: :create

  def full_name
    "#{firstname} #{lastname}"
  end

end
