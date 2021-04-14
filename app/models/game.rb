# frozen_string_literal: true

class Game < ApplicationRecord
  validates :match, uniqueness: { scope: [:match, :match_time,:stadium] }
  scope :todays_match, -> { where(created_at: Time.zone.now.all_day) } 
end
