class Paper < ApplicationRecord
  has_and_belongs_to_many :authors
  scope :year, -> (time) { where("year == ?", time)}
  validates :title, presence: true
  validates :venue, presence: true
  validates :year, presence: true, numericality: true
end
