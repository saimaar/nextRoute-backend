class Destination < ApplicationRecord
  has_many :things_to_dos, dependent: :destroy
  has_many :add_joiners, dependent: :destroy
  has_many :bucketlists, through: :add_joiners
  has_many :reviews, dependent: :destroy
  has_many :users, through: :reviews


end
