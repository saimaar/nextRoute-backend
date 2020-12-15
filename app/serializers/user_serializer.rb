class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :picture, :bio
  has_many :reviews
  has_one :bucketlist

  def bucketlist
    self.object.bucketlist.add_joiners.map do |add_joiner|
      add_joiner
    end
  end

end
