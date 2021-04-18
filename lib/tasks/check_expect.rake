namespace :check_expect do
  desc '予想結果と試合結果を照合し、ポイントを与える' 
  task check_expect_score: :environment do
   
expects = Expect.expected
games = Game.result
game = games.ids
expects.zip(game) do |e, g|
    games.each do |g|
      expects.each do |e|
  if e.game_id == g && e.home_score == g.result_home && e.away_score == g.result_away
      e.user.point += 15
      e.save
  elsif e.game_id == g && e.home_score == g.result_home || e.away_score == g.result_away
      e.user.point += 5
      e.save
  elsif  e.game_id == g && e.home_score > e.away_score && g.result_home > g.result_away
      e.user.point += 3
      e.save
    elsif  e.game_id == g && e.home_score < e.away_score && g.result_home < g.result_away
      e.user.point += 3
      e.save
    end
    end
  end
end
end
end
   
