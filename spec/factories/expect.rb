# frozen_string_literal: true

FactoryBot.define do
  factory :expect, class: Expect do
    home_score { 0 }
    away_score { 0 }
    association :user
    association :game
  end
end
