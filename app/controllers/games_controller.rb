class GamesController < ApplicationController
  before_action :require_login
  def index
    agent = Mechanize.new
    page = agent.get("https://baseball.yahoo.co.jp/npb/schedule/")
   
     
    @match1 = page.at("/html/body/div/div/div/main/div/div[1]/section[3]/div/section[1]/ul/li[1]/a/div[1]").inner_text
    @stadium1 = page.at("/html/body/div/div/div/main/div/div[1]/section[3]/div/section[1]/ul/li[1]/a/p/span").inner_text

    @match2 = page.at("/html/body/div/div/div/main/div/div[1]/section[3]/div/section[1]/ul/li[2]/a/div[1]").inner_text
    @stadium2 = page.at("/html/body/div/div/div/main/div/div[1]/section[3]/div/section[1]/ul/li[2]/a/p/span").inner_text

    @match3 = page.at("/html/body/div/div/div/main/div/div[1]/section[3]/div/section[1]/ul/li[3]/a/div[1]").inner_text
    @stadium3 = page.at("/html/body/div/div/div/main/div/div[1]/section[3]/div/section[1]/ul/li[3]/a/p/span").inner_text

    @match4 = page.at("/html/body/div/div/div/main/div/div[1]/section[3]/div/section[2]/ul/li[1]/a/div[1]").inner_text
    @stadium4 = page.at("/html/body/div/div/div/main/div/div[1]/section[3]/div/section[2]/ul/li[1]/a/p/span").inner_text

    @match5 = page.at("/html/body/div/div/div/main/div/div[1]/section[3]/div/section[2]/ul/li[2]/a/div[1]").inner_text
    @stadium5 = page.at("/html/body/div/div/div/main/div/div[1]/section[3]/div/section[2]/ul/li[2]/a/p/span").inner_text

    @match6 = page.at("/html/body/div/div/div/main/div/div[1]/section[3]/div/section[2]/ul/li[3]/a/div[1]").inner_text
    @stadium6 = page.at("/html/body/div/div/div/main/div/div[1]/section[3]/div/section[2]/ul/li[3]/a/p/span").inner_text
    
    @game1 = Game.new     
    @game1.match = @match1
    @game1.stadium = @stadium1
    @game1.save

    @game2 = Game.new     
    @game2.match = @match2
    @game2.stadium = @stadium2
    @game2.save

    @game3 = Game.new     
    @game3.match = @match3
    @game3.stadium = @stadium3
    @game3.save

    @game4 = Game.new     
    @game4.match = @match4
    @game4.stadium = @stadium4
    @game4.save

    @game5 = Game.new     
    @game5.match = @match5
    @game5.stadium = @stadium5
    @game5.save

    @game6 = Game.new     
    @game6.match = @match6
    @game6.stadium = @stadium6
    @game6.save

  end
end
