# frozen_string_literal: true

class Expect < ApplicationRecord
  belongs_to :user
  belongs_to :game
  validates_uniqueness_of :user_id, scope: :game_id, on: :create
  scope :today, -> { where('created_at >= ?', Time.zone.now.beginning_of_day) }
  scope :today_others, lambda {
                         where(user_id: current_user.id).where('created_at >= ?', Time.zone.now.beginning_of_day)
                       }
  scope :expected, -> { where('created_at >= ?', Time.zone.now.beginning_of_day) }

  scope :match_id, -> { Expects.joins(:game) }
end
