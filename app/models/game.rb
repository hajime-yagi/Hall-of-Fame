# frozen_string_literal: true

class Game < ApplicationRecord
  has_many :expects
  scope :todays_match, -> { where(created_at: Time.zone.now.all_day).limit.distinct }
  scope :recent, -> { order(id: :desc).limit(6).distinct }
end
