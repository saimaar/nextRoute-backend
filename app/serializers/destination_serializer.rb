class DestinationSerializer < ActiveModel::Serializer
  attributes :id, :name, :bio, :photo, :trip_type, :geocode
  has_many :reviews, dependent: :destroy
  has_many :things_to_dos, dependent: :destroy
  has_many :add_joiners, dependent: :destroy

  def geocode
   @instance_options[:geocode]
  end

end
