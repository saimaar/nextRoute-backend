class AddJoiner < ApplicationRecord
  belongs_to :bucketlist
  belongs_to :destination
end
