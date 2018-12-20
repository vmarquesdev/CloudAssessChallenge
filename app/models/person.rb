class Person < ApplicationRecord
  belongs_to :organisation

  include PgSearch
  pg_search_scope :search, against: [ :first_name, :last_name ], associated_against: {
    organisation: :title,
  }, using: { tsearch: { prefix: true, any_word: true } }

  validates :first_name, :last_name, :organisation_id, :assessment_count, presence: true
end
