# frozen_string_literal: true

class Game < ApplicationRecord

  scope :todays_match, -> { where(created_at: Time.zone.now.all_day).limit().distinct }
  scope :recent, -> { order(id: :asc).limit(6).distinct } 
end
