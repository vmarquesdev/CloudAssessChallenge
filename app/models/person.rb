class Person < ApplicationRecord
  belongs_to :organisation

  validates :first_name, :last_name, :organisation_id, :assessment_count, presence: true
end
