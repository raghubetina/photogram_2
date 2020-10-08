class PhotoResource < ApplicationResource
  attribute :id, :integer, writable: false
  attribute :created_at, :datetime, writable: false
  attribute :updated_at, :datetime, writable: false
  attribute :caption, :string
  attribute :image, :string
  attribute :location, :string
  attribute :owner_id, :integer

  # Direct associations

  # Indirect associations

end
