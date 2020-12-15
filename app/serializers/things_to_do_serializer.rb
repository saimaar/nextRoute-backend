class ThingsToDoSerializer < ActiveModel::Serializer
  attributes :id, :bio, :photo, :name
end
