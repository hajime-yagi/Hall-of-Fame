class GamesController < ApplicationController
  before_action :require_login
  def index
    agent = Mechanize.new
    page = agent.get("https://baseball.yahoo.co.jp/npb/schedule/")
   
     
    @team1 = page.at("/html/body/div/div/div/main/div/div[1]/section[3]/div/section[1]/ul/li[1]/a/div[1]/p[1]").inner_text
    @team2 = page.at("/html/body/div/div/div/main/div/div[1]/section[3]/div/section[1]/ul/li[1]/a/div[1]/p[2]").inner_text
    @team3 = page.at("/html/body/div/div/div/main/div/div[1]/section[3]/div/section[1]/ul/li[2]/a/div[1]/p[1]").inner_text
    @team4 = page.at("/html/body/div/div/div/main/div/div[1]/section[3]/div/section[1]/ul/li[2]/a/div[1]/p[2]").inner_text
    @team5 = page.at("/html/body/div/div/div/main/div/div[1]/section[3]/div/section[1]/ul/li[3]/a/div[1]/p[1]").inner_text
    @team6 = page.at("/html/body/div/div/div/main/div/div[1]/section[3]/div/section[1]/ul/li[3]/a/div[1]/p[2]").inner_text
    @team7 = page.at("/html/body/div/div/div/main/div/div[1]/section[3]/div/section[2]/ul/li[1]/a/div[1]/p[1]").inner_text
    @team8 = page.at("/html/body/div/div/div/main/div/div[1]/section[3]/div/section[2]/ul/li[1]/a/div[1]/p[2]").inner_text
    @team9 = page.at("/html/body/div/div/div/main/div/div[1]/section[3]/div/section[2]/ul/li[2]/a/div[1]/p[1]").inner_text
    @team10 = page.at("/html/body/div/div/div/main/div/div[1]/section[3]/div/section[2]/ul/li[2]/a/div[1]/p[2]").inner_text
    @team11 = page.at("/html/body/div/div/div/main/div/div[1]/section[3]/div/section[2]/ul/li[3]/a/div[1]/p[1]").inner_text
    @team12 = page.at("/html/body/div/div/div/main/div/div[1]/section[3]/div/section[2]/ul/li[3]/a/div[1]/p[2]").inner_text



    @stadium1 = page.at("/html/body/div/div/div/main/div/div[1]/section[3]/div/section[1]/ul/li[1]/a/p/span").inner_text
    @stadium2 = page.at("/html/body/div/div/div/main/div/div[1]/section[3]/div/section[1]/ul/li[2]/a/p/span").inner_text
    @stadium3 = page.at("/html/body/div/div/div/main/div/div[1]/section[3]/div/section[1]/ul/li[3]/a/p/span").inner_text
    @stadium4 = page.at("/html/body/div/div/div/main/div/div[1]/section[3]/div/section[2]/ul/li[1]/a/p/span").inner_text
    @stadium5 = page.at("/html/body/div/div/div/main/div/div[1]/section[3]/div/section[2]/ul/li[2]/a/p/span").inner_text
    @stadium6 = page.at("/html/body/div/div/div/main/div/div[1]/section[3]/div/section[2]/ul/li[3]/a/p/span").inner_text


   
    if !@time1.nil?
    @time1 = page.at("/html/body/div/div/div/main/div/div[1]/section[3]/div/section[1]/ul/li[1]/a/div[2]/div/time").inner_text
    elsif !@score1 && @score2.nil?
      @score1 = page.at("/html/body/div/div/div/main/div/div[1]/section[3]/div/section[1]/ul/li[1]/a/div[2]/div/p[1]/span[1]").inner_text.to_i
      @score2 = page.at("/html/body/div/div/div/main/div/div[1]/section[3]/div/section[1]/ul/li[1]/a/div[2]/div/p[1]/span[3]") .inner_text.to_i
    else
      @time1 = nil
    end
    
  
    if !@time2.nil?
      @time2 = page.at("/html/body/div/div/div/main/div/div[1]/section[3]/div/section[1]/ul/li[2]/a/div[2]/div/time").inner_text
    elsif !@score3 && @score4.nil?
      @score3 = page.at("/html/body/div/div/div/main/div/div[1]/section[3]/div/section[1]/ul/li[2]/a/div[2]/div/p[1]/span[1]").inner_text.to_i
      @score4 = page.at("/html/body/div/div/div/main/div/div[1]/section[3]/div/section[1]/ul/li[2]/a/div[2]/div/p[1]/span[3]").inner_text.to_i 
    else  
     @time2 = nil
    end
  
    if @time3
    @time3 = page.at("/html/body/div/div/div/main/div/div[1]/section[3]/div/section[1]/ul/li[3]/a/div[2]/div/time").inner_text
  elsif !@score5 && @score6.nil?
    @score5 = page.at("/html/body/div/div/div/main/div/div[1]/section[3]/div/section[1]/ul/li[3]/a/div[2]/div/p[1]/span[1]").inner_text.to_i
    @score6 = page.at("/html/body/div/div/div/main/div/div[1]/section[3]/div/section[1]/ul/li[3]/a/div[2]/div/p[1]/span[3]").inner_text.to_i
    else
      @time3 = nil
    end

    if !@time4.nil?
    @time4 = page.at("/html/body/div/div/div/main/div/div[1]/section[3]/div/section[2]/ul/li[1]/a/div[2]/div/time").inner_text
  elsif !@score7 && @score8.nil?
    @score7 = page.at("/html/body/div/div/div/main/div/div[1]/section[3]/div/section[2]/ul/li[1]/a/div[2]/div/p[1]/span[1]").inner_text.to_i
    @score8 = page.at("/html/body/div/div/div/main/div/div[1]/section[3]/div/section[2]/ul/li[1]/a/div[2]/div/p[1]/span[3]").inner_text.to_i
    else
      @time4 = nil
    end

    if !@time5.nil?
    @time5 = page.at("/html/body/div/div/div/main/div/div[1]/section[3]/div/section[2]/ul/li[2]/a/div[2]/div/time").inner_text
   elsif !@score9 && @score10.nil?
    @score9 = page.at("/html/body/div/div/div/main/div/div[1]/section[3]/div/section[2]/ul/li[2]/a/div[2]/div/p[1]/span[1]").inner_text.to_i
    @score10 = page.at("/html/body/div/div/div/main/div/div[1]/section[3]/div/section[2]/ul/li[2]/a/div[2]/div/p[1]/span[3]").inner_text.to_i
    else
      @time5 = nil
    end

    if !@time6.nil?
    @time6 = page.at("/html/body/div/div/div/main/div/div[1]/section[3]/div/section[2]/ul/li[3]/a/div[2]/div/time").inner_text
  elsif !@score11 && @score12.nil?
    @score11 = page.at("/html/body/div/div/div/main/div/div[1]/section[3]/div/section[2]/ul/li[3]/a/div[2]/div/p[1]/span[1]").inner_text.to_i
    @score12 = page.at("/html/body/div/div/div/main/div/div[1]/section[3]/div/section[2]/ul/li[3]/a/div[2]/div/p[1]/span[3]").inner_text.to_i
    else
      @time6 = nil
    end
   
    
    






    @games = Game.new     
    @games.team_a = @team1
    @games.team_b = @team2
    @games.stadium = @stadium1
    @games.match_time = @time1
    @games.result_home = @score1
    @games.result_away = @score2
    @games.save

    @games = Game.new     
    @games.team_a = @team3
    @games.team_b = @team4
    @games.stadium = @stadium2
    @games.match_time = @time2
    @games.result_home = @score3
    @games.result_away = @score4
    @games.save

    @games = Game.new     
    @games.team_a = @team5
    @games.team_b = @team6
    @games.stadium = @stadium3
    @games.match_time = @time3
    @games.result_home = @score5
    @games.result_away = @score6
    @games.save

    @games = Game.new     
    @games.team_a = @team7
    @games.team_b = @team8
    @games.stadium = @stadium4
    @games.match_time = @time4
    @games.result_home = @score7
    @games.result_away = @score8
    @games.save

    @games = Game.new     
    @games.team_a = @team9
    @games.team_b = @team10
    @games.stadium = @stadium5
    @games.match_time = @time5
    @games.result_home = @score9
    @games.result_away = @score10
    @games.save

    @games = Game.new     
    @games.team_a = @team11
    @games.team_b = @team12
    @games.stadium = @stadium6
    @games.match_time = @time6
    @games.result_home = @score11
    @games.result_away = @score12
    @games.save
    
    @game =Game.last
    @games = Game.recent
  
  end
end
