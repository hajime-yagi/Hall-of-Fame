# frozen_string_literal: true

class Game < ApplicationRecord
  has_many :expects

  scope :todays_match, -> { where(created_at: Time.zone.now.all_day).limit.distinct }
  scope :recent, -> { order(id: :ASC).limit(6).distinct }
  scope :today, -> { where('created_at >= ?', Time.zone.now.beginning_of_day) }
end
