class GamesController < ApplicationController
  before_action :require_login
  def index
    agent = Mechanize.new
    page = agent.get('https://baseball.yahoo.co.jp/npb/schedule/')
   
  
      @team1 = page.at('/html/body/div/div/div/main/div/div[1]/section[3]/div/section[1]/ul/li[1]/a/div[1]/p[1]')
      if @team1.nil?
        @team1 == nil 
      else
        @team1 = page.at('/html/body/div/div/div/main/div/div[1]/section[3]/div/section[1]/ul/li[1]/a/div[1]/p[1]').inner_text
     end

    @team2 = page.at('/html/body/div/div/div/main/div/div[1]/section[3]/div/section[1]/ul/li[1]/a/div[1]/p[2]')
    if @team2.nil?
    else
      @team2 = page.at('/html/body/div/div/div/main/div/div[1]/section[3]/div/section[1]/ul/li[1]/a/div[1]/p[2]').inner_text
   end

   
    @team3 = page.at('/html/body/div/div/div/main/div/div[1]/section[3]/div/section[1]/ul/li[2]/a/div[1]/p[1]')
    if @team3.nil?
    else
      @team3 = page.at('/html/body/div/div/div/main/div/div[1]/section[3]/div/section[1]/ul/li[2]/a/div[1]/p[1]').inner_text
   end

    
    @team4 = page.at('/html/body/div/div/div/main/div/div[1]/section[3]/div/section[1]/ul/li[2]/a/div[1]/p[2]')
    if @team4.nil?
    else
      @team4 = page.at('/html/body/div/div/div/main/div/div[1]/section[3]/div/section[1]/ul/li[2]/a/div[1]/p[2]').inner_text
   end

 
    @team5 = page.at('/html/body/div/div/div/main/div/div[1]/section[3]/div/section[1]/ul/li[3]/a/div[1]/p[1]')
    if @team5.nil?
    else
      @team5 = page.at('/html/body/div/div/div/main/div/div[1]/section[3]/div/section[1]/ul/li[3]/a/div[1]/p[1]').inner_text
   end

   
    @team6 = page.at('/html/body/div/div/div/main/div/div[1]/section[3]/div/section[1]/ul/li[3]/a/div[1]/p[2]')
    if @team6.nil?
    else
      @team6 = page.at('/html/body/div/div/div/main/div/div[1]/section[3]/div/section[1]/ul/li[3]/a/div[1]/p[2]').inner_text
   end

   
    @team7 = page.at('/html/body/div/div/div/main/div/div[1]/section[3]/div/section[2]/ul/li[1]/a/div[1]/p[1]')
    if @team7.nil?
    else
      @team7 = page.at('/html/body/div/div/div/main/div/div[1]/section[3]/div/section[2]/ul/li[1]/a/div[1]/p[1]').inner_text
   end

    
    
    @team8 = page.at('/html/body/div/div/div/main/div/div[1]/section[3]/div/section[2]/ul/li[1]/a/div[1]/p[2]')
    if @team8.nil?
    else
      @team8 = page.at('/html/body/div/div/div/main/div/div[1]/section[3]/div/section[2]/ul/li[1]/a/div[1]/p[2]').inner_text
   end

 
    @team9 = page.at('/html/body/div/div/div/main/div/div[1]/section[3]/div/section[2]/ul/li[2]/a/div[1]/p[1]')
    if @team9.nil?
    else
      @team9 = page.at('/html/body/div/div/div/main/div/div[1]/section[3]/div/section[2]/ul/li[2]/a/div[1]/p[1]').inner_text
   end

   
    
    @team10 = page.at('/html/body/div/div/div/main/div/div[1]/section[3]/div/section[2]/ul/li[2]/a/div[1]/p[2]')
      if @team10.nil?
      else
        @team10 = page.at('/html/body/div/div/div/main/div/div[1]/section[3]/div/section[2]/ul/li[2]/a/div[1]/p[2]').inner_text
     end
 
     
       @team11 = page.at('/html/body/div/div/div/main/div/div[1]/section[3]/div/section[2]/ul/li[3]/a/div[1]/p[1]')
       if @team11.nil?
       else
        @team11 = page.at('/html/body/div/div/div/main/div/div[1]/section[3]/div/section[2]/ul/li[3]/a/div[1]/p[1]').inner_text
      end
 
     @team12 = page.at('/html/body/div/div/div/main/div/div[1]/section[3]/div/section[2]/ul/li[3]/a/div[1]/p[2]')
     if @team12.nil?
     else
      @team12 = page.at('/html/body/div/div/div/main/div/div[1]/section[3]/div/section[2]/ul/li[3]/a/div[1]/p[2]').inner_text
   end
     
    
    
    @stadium1 = page.at('/html/body/div/div/div/main/div/div[1]/section[3]/div/section[1]/ul/li[1]/a/p/span')
    if @stadium1.nil?
      @stadium1 == nil
    else
    @stadium1 = page.at('/html/body/div/div/div/main/div/div[1]/section[3]/div/section[1]/ul/li[1]/a/p/span').inner_text 
    end

    @stadium2 = page.at('/html/body/div/div/div/main/div/div[1]/section[3]/div/section[1]/ul/li[2]/a/p/span')
    if @stadium2.nil?
      @stadium2 == nil
    else
    @stadium2 = page.at('/html/body/div/div/div/main/div/div[1]/section[3]/div/section[1]/ul/li[2]/a/p/span').inner_text
    end

    @stadium3 = page.at('/html/body/div/div/div/main/div/div[1]/section[3]/div/section[1]/ul/li[3]/a/p/span')
    if @stadium3.nil?
      @stadium3 == nil
    else
    @stadium3 = page.at('/html/body/div/div/div/main/div/div[1]/section[3]/div/section[1]/ul/li[3]/a/p/span').inner_text
    end

    @stadium4 = page.at('/html/body/div/div/div/main/div/div[1]/section[3]/div/section[2]/ul/li[1]/a/p/span')
    if @stadium4.nil?
      @stadium4 == nil
    else
    @stadium4 = page.at('/html/body/div/div/div/main/div/div[1]/section[3]/div/section[2]/ul/li[1]/a/p/span').inner_text
    end

    @stadium5 = page.at('/html/body/div/div/div/main/div/div[1]/section[3]/div/section[2]/ul/li[2]/a/p/span')
    if @stadium5.nil?
      @stadium5 == nil
    else
      @stadium5 = page.at('/html/body/div/div/div/main/div/div[1]/section[3]/div/section[2]/ul/li[2]/a/p/span').inner_text
   end
   
     @stadium6 = page.at('/html/body/div/div/div/main/div/div[1]/section[3]/div/section[2]/ul/li[3]/a/p/span')
      if @stadium6.nil?
        @stadium6 == nil
      else
        @stadium6 = page.at('/html/body/div/div/div/main/div/div[1]/section[3]/div/section[2]/ul/li[3]/a/p/span').inner_text
    end
    
  
      @time1 = page.at('/html/body/div/div/div/main/div/div[1]/section[3]/div/section[1]/ul/li[1]/a/div[2]/div/time')
      if @time1.nil?
        @time1 == nil
      else
      @time1 = page.at('/html/body/div/div/div/main/div/div[1]/section[3]/div/section[1]/ul/li[1]/a/div[2]/div/time').inner_text 
      end

      @score1 = page.at('/html/body/div/div/div/main/div/div[1]/section[3]/div/section[1]/ul/li[1]/a/div[2]/div/p[1]/span[1]')
      if @score1.nil?
        @score1 == nil
      else
      @score1 = page.at('/html/body/div/div/div/main/div/div[1]/section[3]/div/section[1]/ul/li[1]/a/div[2]/div/p[1]/span[1]').inner_text.to_i
      end

      @score2 = page.at('/html/body/div/div/div/main/div/div[1]/section[3]/div/section[1]/ul/li[1]/a/div[2]/div/p[1]/span[3]')
      if @score2.nil?
        @score2 == nil
      else
      @score2 = page.at('/html/body/div/div/div/main/div/div[1]/section[3]/div/section[1]/ul/li[1]/a/div[2]/div/p[1]/span[3]').inner_text.to_i 
      end
    

   
      @time2 = page.at('/html/body/div/div/div/main/div/div[1]/section[3]/div/section[1]/ul/li[2]/a/div[2]/div/time')
      if @time2.nil?
        @time2 == nil
      else
      @time2 = page.at('/html/body/div/div/div/main/div/div[1]/section[3]/div/section[1]/ul/li[2]/a/div[2]/div/time').inner_text 
      end
      @score3 = page.at('/html/body/div/div/div/main/div/div[1]/section[3]/div/section[1]/ul/li[2]/a/div[2]/div/p[1]/span[1]')
      if @score3.nil?
        @score3 == nil
      else
      @score3 = page.at('/html/body/div/div/div/main/div/div[1]/section[3]/div/section[1]/ul/li[2]/a/div[2]/div/p[1]/span[1]').inner_text.to_i
      end

      @score4 = page.at('/html/body/div/div/div/main/div/div[1]/section[3]/div/section[1]/ul/li[2]/a/div[2]/div/p[1]/span[3]')
      if @score4.nil?
        @score4 == nil
      else
      @score4 = page.at('/html/body/div/div/div/main/div/div[1]/section[3]/div/section[1]/ul/li[2]/a/div[2]/div/p[1]/span[3]').inner_text.to_i
      end
    
      @time3 = page.at('/html/body/div/div/div/main/div/div[1]/section[3]/div/section[1]/ul/li[3]/a/div[2]/div/time')
      if @time3.nil?
        @time3 == nil
      else
      @time3 = page.at('/html/body/div/div/div/main/div/div[1]/section[3]/div/section[1]/ul/li[3]/a/div[2]/div/time').inner_text
      end

      @score5 = page.at('/html/body/div/div/div/main/div/div[1]/section[3]/div/section[1]/ul/li[3]/a/div[2]/div/p[1]/span[1]')
      if @score5.nil?
        @score5 == nil
      else
      @score5 = page.at('/html/body/div/div/div/main/div/div[1]/section[3]/div/section[1]/ul/li[3]/a/div[2]/div/p[1]/span[1]').inner_text.to_i 
      end

      @score6 = page.at('/html/body/div/div/div/main/div/div[1]/section[3]/div/section[1]/ul/li[3]/a/div[2]/div/p[1]/span[3]')
      if @score6.nil?
        @score6 == nil
      else
      @score6 = page.at('/html/body/div/div/div/main/div/div[1]/section[3]/div/section[1]/ul/li[3]/a/div[2]/div/p[1]/span[3]').inner_text.to_i 
      end

  
      @time4 = page.at('/html/body/div/div/div/main/div/div[1]/section[3]/div/section[2]/ul/li[1]/a/div[2]/div/time')
      if @time4.nil?
        @time4 == nil
      else
      @time4 = page.at('/html/body/div/div/div/main/div/div[1]/section[3]/div/section[2]/ul/li[1]/a/div[2]/div/time').inner_text
      end
      @score7 = page.at('/html/body/div/div/div/main/div/div[1]/section[3]/div/section[2]/ul/li[1]/a/div[2]/div/p[1]/span[1]')
      if @score7.nil?
        @score7 == nil
      else
      @score7 = page.at('/html/body/div/div/div/main/div/div[1]/section[3]/div/section[2]/ul/li[1]/a/div[2]/div/p[1]/span[1]').inner_text.to_i 
      end
      @score8 = page.at('/html/body/div/div/div/main/div/div[1]/section[3]/div/section[2]/ul/li[1]/a/div[2]/div/p[1]/span[3]')
      if @score8.nil?
        @score8 == nil
      else
      @score8 = page.at('/html/body/div/div/div/main/div/div[1]/section[3]/div/section[2]/ul/li[1]/a/div[2]/div/p[1]/span[3]').inner_text.to_i 
      end
  
      @time5 = page.at('/html/body/div/div/div/main/div/div[1]/section[3]/div/section[2]/ul/li[2]/a/div[2]/div/time')
      if @time5.nil?
        @time5 == nil
      else
      @time5 = page.at('/html/body/div/div/div/main/div/div[1]/section[3]/div/section[2]/ul/li[2]/a/div[2]/div/time').inner_text 
      end
      @score9 = page.at('/html/body/div/div/div/main/div/div[1]/section[3]/div/section[2]/ul/li[2]/a/div[2]/div/p[1]/span[1]')
      if @score9.nil?
        @score9 == nil
      else
      @score9 = page.at('/html/body/div/div/div/main/div/div[1]/section[3]/div/section[2]/ul/li[2]/a/div[2]/div/p[1]/span[1]').inner_text.to_i
      end
      @score10 = page.at('/html/body/div/div/div/main/div/div[1]/section[3]/div/section[2]/ul/li[2]/a/div[2]/div/p[1]/span[3]')
      if @score10.nil?
        @score10 == nil
      else
      @score10 = page.at('/html/body/div/div/div/main/div/div[1]/section[3]/div/section[2]/ul/li[2]/a/div[2]/div/p[1]/span[3]').inner_text.to_i
      end

   
      @time6 = page.at('/html/body/div/div/div/main/div/div[1]/section[3]/div/section[2]/ul/li[3]/a/div[2]/div/time')
      if @time6.nil?
        @time6 == nil
      else
      @time6 = page.at('/html/body/div/div/div/main/div/div[1]/section[3]/div/section[2]/ul/li[3]/a/div[2]/div/time').inner_text
      end
      @score11 = page.at('/html/body/div/div/div/main/div/div[1]/section[3]/div/section[2]/ul/li[3]/a/div[2]/div/p[1]/span[1]')
      if @score11.nil?
        @score11 == nil
      else
      @score11 = page.at('/html/body/div/div/div/main/div/div[1]/section[3]/div/section[2]/ul/li[3]/a/div[2]/div/p[1]/span[1]').inner_text.to_i 
      end
      @score12 = page.at('/html/body/div/div/div/main/div/div[1]/section[3]/div/section[2]/ul/li[3]/a/div[2]/div/p[1]/span[3]') 
      if @score12.nil?
        @score12 == nil
      else
      @score12 = page.at('/html/body/div/div/div/main/div/div[1]/section[3]/div/section[2]/ul/li[3]/a/div[2]/div/p[1]/span[3]').inner_text.to_i  
      end

    @status1 = page.at('/html/body/div/div/div/main/div/div[1]/section[3]/div/section[1]/ul/li[1]/a/div[2]/div/p[2]')
    if @status1.nil?
      @status1 == nil
    else
    @status1 = page.at('/html/body/div/div/div/main/div/div[1]/section[3]/div/section[1]/ul/li[1]/a/div[2]/div/p[2]').inner_text
    end

    @status2 = page.at('/html/body/div/div/div/main/div/div[1]/section[3]/div/section[1]/ul/li[2]/a/div[2]/div/p[2]')
    if @status2.nil?
      @status2 == nil
    else
    @status2 = page.at('/html/body/div/div/div/main/div/div[1]/section[3]/div/section[1]/ul/li[2]/a/div[2]/div/p[2]').inner_text 
    end

    @status3 = page.at('/html/body/div/div/div/main/div/div[1]/section[3]/div/section[1]/ul/li[3]/a/div[2]/div/p[2]') 
    if @status3.nil?
      @status3 == nil
    else
    @status3 = page.at('/html/body/div/div/div/main/div/div[1]/section[3]/div/section[1]/ul/li[3]/a/div[2]/div/p[2]').inner_text 
    end

    @status4 = page.at('/html/body/div/div/div/main/div/div[1]/section[3]/div/section[2]/ul/li[1]/a/div[2]/div/p[2]')
    if @status4.nil?
      @status4 == nil
    else
    @status4 = page.at('/html/body/div/div/div/main/div/div[1]/section[3]/div/section[2]/ul/li[1]/a/div[2]/div/p[2]').inner_text 
    end

    @status5 = page.at('/html/body/div/div/div/main/div/div[1]/section[3]/div/section[2]/ul/li[2]/a/div[2]/div/p[2]')
    if @status5.nil?
      @status5 == nil
    else
    @status5 = page.at('/html/body/div/div/div/main/div/div[1]/section[3]/div/section[2]/ul/li[2]/a/div[2]/div/p[2]').inner_text 
    end

    @status6 = page.at('/html/body/div/div/div/main/div/div[1]/section[3]/div/section[2]/ul/li[3]/a/div[2]/div/p[2]')
    if @status6.nil?
      @status6 == nil
    else
    @status6 = page.at('/html/body/div/div/div/main/div/div[1]/section[3]/div/section[2]/ul/li[3]/a/div[2]/div/p[2]').inner_text 
    end



    @pitcher1 = page.at('/html/body/div/div/div/main/div/div[1]/section[3]/div/section[1]/ul/li[1]/a/div[2]/ul[1]/li')
    if @pitcher1.nil?
      @pitcher1 == nil
    else
    @pitcher1 = page.at('/html/body/div/div/div/main/div/div[1]/section[3]/div/section[1]/ul/li[1]/a/div[2]/ul[1]/li').inner_text 
    end

    @pitcher2 = page.at('/html/body/div/div/div/main/div/div[1]/section[3]/div/section[1]/ul/li[1]/a/div[2]/ul[2]/li')
    if @pitcher2.nil?
      @pitcher2 == nil
    else
    @pitcher2 = page.at('/html/body/div/div/div/main/div/div[1]/section[3]/div/section[1]/ul/li[1]/a/div[2]/ul[2]/li').inner_text 
    end
    @pitcher3 = page.at('/html/body/div/div/div/main/div/div[1]/section[3]/div/section[1]/ul/li[2]/a/div[2]/ul[1]/li')
    if @pitcher3.nil?
      @pitcher3 == nil
    else
    @pitcher3 = page.at('/html/body/div/div/div/main/div/div[1]/section[3]/div/section[1]/ul/li[2]/a/div[2]/ul[1]/li').inner_text 
    end
    @pitcher4 = page.at('/html/body/div/div/div/main/div/div[1]/section[3]/div/section[1]/ul/li[2]/a/div[2]/ul[2]/li')
    if @pitcher4.nil?
      @pitcher4 == nil
    else
    @pitcher4 = page.at('/html/body/div/div/div/main/div/div[1]/section[3]/div/section[1]/ul/li[2]/a/div[2]/ul[2]/li').inner_text
    end
    @pitcher5 = page.at('/html/body/div/div/div/main/div/div[1]/section[3]/div/section[1]/ul/li[3]/a/div[2]/ul[1]/li')
    if @pitcher5.nil?
      @pitcher5 == nil
    else
    @pitcher5 = page.at('/html/body/div/div/div/main/div/div[1]/section[3]/div/section[1]/ul/li[3]/a/div[2]/ul[1]/li').inner_text 
    end
    @pitcher6 = page.at('/html/body/div/div/div/main/div/div[1]/section[3]/div/section[1]/ul/li[3]/a/div[2]/ul[2]/li')
    if @pitcher6.nil?
      @pitcher6 == nil
    else
    @pitcher6 = page.at('/html/body/div/div/div/main/div/div[1]/section[3]/div/section[1]/ul/li[3]/a/div[2]/ul[2]/li').inner_text
    end
    @pitcher7 = page.at('/html/body/div/div/div/main/div/div[1]/section[3]/div/section[2]/ul/li[1]/a/div[2]/ul[1]/li')
    if @pitcher7.nil?
      @pitcher7 == nil
    else
    @pitcher7 = page.at('/html/body/div/div/div/main/div/div[1]/section[3]/div/section[2]/ul/li[1]/a/div[2]/ul[1]/li').inner_text
    end
    @pitcher8 = page.at('/html/body/div/div/div/main/div/div[1]/section[3]/div/section[2]/ul/li[1]/a/div[2]/ul[2]/li')
    if @pitcher8.nil?
      @pitcher8 == nil
    else
    @pitcher8 = page.at('/html/body/div/div/div/main/div/div[1]/section[3]/div/section[2]/ul/li[1]/a/div[2]/ul[2]/li').inner_text
    end
    @pitcher9 = page.at('/html/body/div/div/div/main/div/div[1]/section[3]/div/section[2]/ul/li[2]/a/div[2]/ul[1]/li')
    if @pitcher9.nil?
      @pitcher9 == nil
    else
    @pitcher9 = page.at('/html/body/div/div/div/main/div/div[1]/section[3]/div/section[2]/ul/li[2]/a/div[2]/ul[1]/li').inner_text 
    end
    @pitcher10 = page.at('/html/body/div/div/div/main/div/div[1]/section[3]/div/section[2]/ul/li[2]/a/div[2]/ul[2]/li') 
    if @pitcher10.nil?
      @pitcher10 == nil
    else
    @pitcher10 = page.at('/html/body/div/div/div/main/div/div[1]/section[3]/div/section[2]/ul/li[2]/a/div[2]/ul[2]/li').inner_text 
    end
    @pitcher11 = page.at('/html/body/div/div/div/main/div/div[1]/section[3]/div/section[2]/ul/li[3]/a/div[2]/ul[1]/li')
    if @pitcher11.nil?
      @pitcher11 == nil
    else
    @pitcher11 = page.at('/html/body/div/div/div/main/div/div[1]/section[3]/div/section[2]/ul/li[3]/a/div[2]/ul[1]/li').inner_text 
    end
    @pitcher12 = page.at('/html/body/div/div/div/main/div/div[1]/section[3]/div/section[2]/ul/li[3]/a/div[2]/ul[2]/li')
    if @pitcher12.nil?
      @pitcher12 == nil
    else
    @pitcher12 = page.at('/html/body/div/div/div/main/div/div[1]/section[3]/div/section[2]/ul/li[3]/a/div[2]/ul[2]/li').inner_text 
    end

    @games = Game.new
    @games.team_a = @team1
    @games.team_b = @team2
    @games.stadium = @stadium1
    @games.match_time = @time1
    @games.result_home = @score1
    @games.result_away = @score2
    @games.status = @status1
    @games.pitcher_a = @pitcher1
    @games.pitcher_b = @pitcher2
    @games.save

    @games = Game.new
    @games.team_a = @team3
    @games.team_b = @team4
    @games.stadium = @stadium2
    @games.match_time = @time2
    @games.result_home = @score3
    @games.result_away = @score4
    @games.status = @status2
    @games.pitcher_a = @pitcher3
    @games.pitcher_b = @pitcher4
    @games.save

    @games = Game.new
    @games.team_a = @team5
    @games.team_b = @team6
    @games.stadium = @stadium3
    @games.match_time = @time3
    @games.result_home = @score5
    @games.result_away = @score6
    @games.status = @status3
    @games.pitcher_a = @pitcher5
    @games.pitcher_b = @pitcher6
    @games.save

    @games = Game.new
    @games.team_a = @team7
    @games.team_b = @team8
    @games.stadium = @stadium4
    @games.match_time = @time4
    @games.result_home = @score7
    @games.result_away = @score8
    @games.status = @status4
    @games.pitcher_a = @pitcher7
    @games.pitcher_b = @pitcher8
    @games.save

    @games = Game.new
    @games.team_a = @team9
    @games.team_b = @team10
    @games.stadium = @stadium5
    @games.match_time = @time5
    @games.result_home = @score9
    @games.result_away = @score10
    @games.status = @status5
    @games.pitcher_a = @pitcher9
    @games.pitcher_b = @pitcher10
    @games.save

    @games = Game.new
    @games.team_a = @team11
    @games.team_b = @team12
    @games.stadium = @stadium6
    @games.match_time = @time6
    @games.result_home = @score11
    @games.result_away = @score12
    @games.status = @status6
    @games.pitcher_a = @pitcher11
    @games.pitcher_b = @pitcher12
    @games.save

    @game = Game.last
    @games = Game.recent
  end
end
