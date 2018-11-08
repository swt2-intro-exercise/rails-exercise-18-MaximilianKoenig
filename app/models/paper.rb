class Paper < ApplicationRecord

  has_and_belongs_to_many :authors

  scope :published_at, ->(year) { where("year = ?", year)}

  validates :title, :venue, :year, presence: true
  validates :year, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
end
