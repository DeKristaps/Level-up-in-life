class Quest < ApplicationRecord
  validates :title, length: { minimum: 6 }
  validates :description, length: { minimum: 6 }
  validates :xp_given, numericality: { greater_than_or_equal_to: 1 }
  validates :xp_for_stat, presence: true
end
