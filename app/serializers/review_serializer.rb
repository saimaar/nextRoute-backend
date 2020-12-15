class ReviewSerializer < ActiveModel::Serializer
  attributes :id, :comment, :rating, :user_id, :username

  def username
    self.object.user.username
  end

end
