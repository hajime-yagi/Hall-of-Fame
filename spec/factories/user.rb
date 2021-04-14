# frozen_string_literal: true

FactoryBot.define do
  factory :user, class: User do
    sequence(:name) { |i| "test_#{i}_san" }
    sequence(:email) { |i| "test_#{i}_@test.co.jp" }
    password { 'password' }
    password_confirmation { 'password' }
  end
end
