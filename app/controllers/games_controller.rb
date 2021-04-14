class GamesController < ApplicationController
  before_action :require_login
  def index
    agent = Mechanize.new
    page = agent.get("https://baseball.yahoo.co.jp/npb/schedule/")
   
     
    @match1 = page.at("/html/body/div/div/div/main/div/div[1]/section[3]/div/section[1]/ul/li[1]/a/div[1]").inner_text
    @stadium1 = page.at("/html/body/div/div/div/main/div/div[1]/section[3]/div/section[1]/ul/li[1]/a/p/span").inner_text
    @time1 = page.at("/html/body/div/div/div/main/div/div[1]/section[3]/div/section[1]/ul/li[1]/a/div[2]/div/time").inner_text


    @match2 = page.at("/html/body/div/div/div/main/div/div[1]/section[3]/div/section[1]/ul/li[2]/a/div[1]").inner_text
    @stadium2 = page.at("/html/body/div/div/div/main/div/div[1]/section[3]/div/section[1]/ul/li[2]/a/p/span").inner_text
    @time2 = page.at("/html/body/div/div/div/main/div/div[1]/section[3]/div/section[1]/ul/li[2]/a/div[2]/div/time").inner_text
    

    @match3 = page.at("/html/body/div/div/div/main/div/div[1]/section[3]/div/section[1]/ul/li[3]/a/div[1]").inner_text
    @stadium3 = page.at("/html/body/div/div/div/main/div/div[1]/section[3]/div/section[1]/ul/li[3]/a/p/span").inner_text
    @time3 = page.at("/html/body/div/div/div/main/div/div[1]/section[3]/div/section[1]/ul/li[3]/a/div[2]/div/time").inner_text

    @match4 = page.at("/html/body/div/div/div/main/div/div[1]/section[3]/div/section[2]/ul/li[1]/a/div[1]").inner_text
    @stadium4 = page.at("/html/body/div/div/div/main/div/div[1]/section[3]/div/section[2]/ul/li[1]/a/p/span").inner_text
    @time4 = page.at("/html/body/div/div/div/main/div/div[1]/section[3]/div/section[2]/ul/li[1]/a/div[2]/div/time").inner_text

    @match5 = page.at("/html/body/div/div/div/main/div/div[1]/section[3]/div/section[2]/ul/li[2]/a/div[1]").inner_text
    @stadium5 = page.at("/html/body/div/div/div/main/div/div[1]/section[3]/div/section[2]/ul/li[2]/a/p/span").inner_text
    @time5 = page.at("/html/body/div/div/div/main/div/div[1]/section[3]/div/section[2]/ul/li[2]/a/div[2]/div/time").inner_text

    @match6 = page.at("/html/body/div/div/div/main/div/div[1]/section[3]/div/section[2]/ul/li[3]/a/div[1]").inner_text
    @stadium6 = page.at("/html/body/div/div/div/main/div/div[1]/section[3]/div/section[2]/ul/li[3]/a/p/span").inner_text
    @time6 = page.at("/html/body/div/div/div/main/div/div[1]/section[3]/div/section[2]/ul/li[3]/a/div[2]/div/time").inner_text
    
    @games = Game.new     
    @games.match = @match1
    @games.stadium = @stadium1
    @games.match_time = @time1
    @games.save

    @games = Game.new     
    @games.match = @match2
    @games.stadium = @stadium2
    @games.match_time = @time2
    @games.save

    @games = Game.new     
    @games.match = @match3
    @games.stadium = @stadium3
    @games.match_time = @time3
    @games.save

    @games = Game.new     
    @games.match = @match4
    @games.stadium = @stadium4
    @games.match_time = @time4
    @games.save

    @games = Game.new     
    @games.match = @match5
    @games.stadium = @stadium5
    @games.match_time = @time5
    @games.save

    @games = Game.new     
    @games.match = @match6
    @games.stadium = @stadium6
    @games.match_time = @time6
    @games.save
    

    @games = Game.todays_match
  end
end
