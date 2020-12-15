class Bucketlist < ApplicationRecord
  belongs_to :user
  has_many :add_joiners, dependent: :destroy
  has_many :destinations, through: :add_joiners

end
