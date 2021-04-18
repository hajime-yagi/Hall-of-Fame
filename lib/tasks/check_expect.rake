namespace :check_expect do
  desc '予想結果と試合結果を照合し、ポイントを与える' 
  task check_expect_score: :environment do
  expects = Expect.expected
  expects.each do |e| 
  if  e.home_score == e.game.result_home && e.away_score == e.game.result_away
      e.user.point += 100
      e.user.save
  
  elsif e.home_score == e.game.result_home || e.away_score == e.game.result_away
        e.user.point + 35
        e.save
  
  elsif e.home_score > e.away_score && e.game.result_home > e.game.result_away
      e.user.point + 20
      e.save
  elsif e.home_score < e.away_score && e.game.result_home < e.game.result_away
      e.user.point + 20
      e.save
    end
    end
  end
end
  
   
