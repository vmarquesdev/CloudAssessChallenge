class Organisation < ApplicationRecord
  has_many :persons, dependent: :destroy

  validates :title, :location, presence: true
end
