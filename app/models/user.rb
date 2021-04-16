# frozen_string_literal: true

class User < ApplicationRecord
  authenticates_with_sorcery!
  validates :name, presence: true
  validates :email, uniqueness: true, presence: true
  validates :password, presence: true, on: :create
  validates :password, length: { minimum: 3 }, if: -> { new_record? || changes[:crypted_password] }
  validates :password, confirmation: true, if: -> { new_record? || changes[:crypted_password] }
  validates :password_confirmation, presence: true, if: -> { new_record? || changes[:crypted_password] }

  mount_uploader :avatar, AvatarUploader

  enum favorite_team: { 読売ジャイアンツ: 0, 阪神タイガース: 1, 中日ドラゴンズ: 2,
                        横浜ベイスターズ: 3, 広島東洋カープ: 4, ヤクルトスワローズ: 5,
                        福岡ソフトバンクホークス: 6, 千葉ロッテマリーンズ: 7,
                        埼玉西武ライオンズ: 8, オリックス・バファローズ: 9,
                        北海道日本ハムファイターズ: 10, 東北楽天ゴールデンイーグルス: 11 }
end
