class Record < ApplicationRecord
	belongs_to :user
	has_one_attached :art
	validates :title, :artist, :year, presence: true
end
