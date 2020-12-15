class User < ApplicationRecord
  has_one :bucketlist, dependent: :destroy
  has_many :reviews, dependent: :destroy
  has_many :destinations, through: :reviews

  validates :username, uniqueness: true
  has_secure_password

end
