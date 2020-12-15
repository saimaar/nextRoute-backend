class BucketlistSerializer < ActiveModel::Serializer
  attributes :id, :user_id
  # has_many :add_joiners
  has_many :destinations, through: :add_joiners
  # belongs_to :user

end
