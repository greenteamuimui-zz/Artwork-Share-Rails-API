class ArtworkShare < ActiveRecord::Base
  validates :artwork_id, presence: true
  validates :viewer_id, presence: true
  validates :viewer_id, uniqueness: {scope: :artwork_id,
    message: "Each artwork can only be shared with the same user once" }

  belongs_to :artwork,
    primary_key: :id,
    foreign_key: :artwork_id,
    class_name: :Artwork

  belongs_to :viewer,
    primary_key: :id,
    foreign_key: :viewer_id,
    class_name: :User
end
