# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
message_count = 1000
ApplicationRecord.transaction do
  Message.destroy_all
  user_ids = User.ids
  message_list = []
  message_count.times do |_n|
    user_id = user_ids.sample
    line_count = rand(1..4)
    # Fakerで１〜４行のランダムメッセージを作成
    content = Faker::Lorem.paragraphs(number: line_count).join("\n")
    message_list << { user_id: user_id, content: content }
  end
  Message.create!(message_list)
end
puts '初期データの追加が完了しました！'
