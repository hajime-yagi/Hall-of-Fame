# frozen_string_literal: true

namespace :check_expect do
  desc '予想結果と試合結果を照合し、ポイントを与える'
  task check_expect_score: :environment do
    expects = Expect.today
    expects.each do |e|
      if e.home_score == e.game.result_home && e.away_score == e.game.result_away
        e.user.point += 50
        e.user.save

      elsif e.home_score == e.game.result_home || e.away_score == e.game.result_away
        e.user.point += 20
        e.user.save
        if e.game.result_home && e.game.result_away ||= 40
      elsif e.home_score > e.away_score && e.game.result_home > e.game.result_away
        e.user.point += 10
        e.user.save
      elsif e.home_score < e.away_score && e.game.result_home < e.game.result_away
        e.user.point += 10
        e.user.save
      end
    end
    end
    puts '付与したよ〜'
  end
end
