class AddJoinerSerializer < ActiveModel::Serializer
  attributes :id, :destination
  # belongs_to :destination
  # belongs_to :bucketlist
end
