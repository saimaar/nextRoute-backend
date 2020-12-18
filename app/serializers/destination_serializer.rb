class DestinationSerializer < ActiveModel::Serializer
  attributes :id, :name, :bio, :photo, :trip_type, :geocode
  has_many :reviews, dependent: :destroy
  has_many :things_to_dos, dependent: :destroy
  has_many :add_joiners, dependent: :destroy

  def geocode
    # byebug
    Geocoder.search(self.object.name).find{|ele| ele.country.downcase === self.object.country_name.downcase}
  end

end
