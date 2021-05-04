# frozen_string_literal: true

class User < ApplicationRecord
  authenticates_with_sorcery!
  has_many :expects
  has_many :messages, dependent: :destroy
  validates :name, presence: true
  validates :email, uniqueness: true, presence: true
  validates :password, presence: true, on: :create
  validates :password, length: { minimum: 3 }, if: -> { new_record? || changes[:crypted_password] }
  validates :password, confirmation: true, if: -> { new_record? || changes[:crypted_password] }
  validates :password_confirmation, presence: true, if: -> { new_record? || changes[:crypted_password] }

  mount_uploader :avatar, AvatarUploader

  enum favorite_team: { giants: 0, tigers: 1, dragons: 2,
                       baystars: 3, carp: 4, swallows: 5,
                        hawks: 6, marines: 7,lions: 8, 
                        orix: 9, fighters: 10, eagles: 11 }

  
end
