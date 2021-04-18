
class GamesController < ApplicationController
  before_action :require_login
  def index
    agent = Mechanize.new
    page = agent.get('https://baseball.yahoo.co.jp/npb/schedule/')

    @team1 = page.at('/html/body/div/div/div/main/div/div[1]/section[3]/div/section[1]/ul/li[1]/a/div[1]/p[1]')
    @team1.nil? || @team1 = page.at('/html/body/div/div/div/main/div/div[1]/section[3]/div/section[1]/ul/li[1]/a/div[1]/p[1]').inner_text

    @team2 = page.at('/html/body/div/div/div/main/div/div[1]/section[3]/div/section[1]/ul/li[1]/a/div[1]/p[2]')
    @team2.nil? || @team2 = page.at('/html/body/div/div/div/main/div/div[1]/section[3]/div/section[1]/ul/li[1]/a/div[1]/p[2]').inner_text

    @team3 = page.at('/html/body/div/div/div/main/div/div[1]/section[3]/div/section[1]/ul/li[2]/a/div[1]/p[1]')
    @team3.nil? || @team3 = page.at('/html/body/div/div/div/main/div/div[1]/section[3]/div/section[1]/ul/li[2]/a/div[1]/p[1]').inner_text

    @team4 = page.at('/html/body/div/div/div/main/div/div[1]/section[3]/div/section[1]/ul/li[2]/a/div[1]/p[2]')
    @team4.nil? || @team4 = page.at('/html/body/div/div/div/main/div/div[1]/section[3]/div/section[1]/ul/li[2]/a/div[1]/p[2]').inner_text

    @team5 = page.at('/html/body/div/div/div/main/div/div[1]/section[3]/div/section[1]/ul/li[3]/a/div[1]/p[1]')
    @team5.nil? || @team5 = page.at('/html/body/div/div/div/main/div/div[1]/section[3]/div/section[1]/ul/li[3]/a/div[1]/p[1]').inner_text

    @team6 = page.at('/html/body/div/div/div/main/div/div[1]/section[3]/div/section[1]/ul/li[3]/a/div[1]/p[2]')
    @team6.nil? || @team6 = page.at('/html/body/div/div/div/main/div/div[1]/section[3]/div/section[1]/ul/li[3]/a/div[1]/p[2]').inner_text

    @team7 = page.at('/html/body/div/div/div/main/div/div[1]/section[3]/div/section[2]/ul/li[1]/a/div[1]/p[1]')
    @team7.nil? || @team7 = page.at('/html/body/div/div/div/main/div/div[1]/section[3]/div/section[2]/ul/li[1]/a/div[1]/p[1]').inner_text

    @team8 = page.at('/html/body/div/div/div/main/div/div[1]/section[3]/div/section[2]/ul/li[1]/a/div[1]/p[2]')
    @team8.nil? || @team8 = page.at('/html/body/div/div/div/main/div/div[1]/section[3]/div/section[2]/ul/li[1]/a/div[1]/p[2]').inner_text

    @team9 = page.at('/html/body/div/div/div/main/div/div[1]/section[3]/div/section[2]/ul/li[2]/a/div[1]/p[1]')
    @team9.nil? || @team9 = page.at('/html/body/div/div/div/main/div/div[1]/section[3]/div/section[2]/ul/li[2]/a/div[1]/p[1]').inner_text

    @team10 = page.at('/html/body/div/div/div/main/div/div[1]/section[3]/div/section[2]/ul/li[2]/a/div[1]/p[2]')
    @team10.nil? || @team10 = page.at('/html/body/div/div/div/main/div/div[1]/section[3]/div/section[2]/ul/li[2]/a/div[1]/p[2]').inner_text

    @team11 = page.at('/html/body/div/div/div/main/div/div[1]/section[3]/div/section[2]/ul/li[3]/a/div[1]/p[1]')
    @team11.nil? || @team11 = page.at('/html/body/div/div/div/main/div/div[1]/section[3]/div/section[2]/ul/li[3]/a/div[1]/p[1]').inner_text

    @team12 = page.at('/html/body/div/div/div/main/div/div[1]/section[3]/div/section[2]/ul/li[3]/a/div[1]/p[2]')
    @team12.nil? || @team12 = page.at('/html/body/div/div/div/main/div/div[1]/section[3]/div/section[2]/ul/li[3]/a/div[1]/p[2]').inner_text

    @stadium1 = page.at('/html/body/div/div/div/main/div/div[1]/section[3]/div/section[1]/ul/li[1]/a/p/span')
    @stadium1.nil? || @stadium1 = page.at('/html/body/div/div/div/main/div/div[1]/section[3]/div/section[1]/ul/li[1]/a/p/span').inner_text

    @stadium2 = page.at('/html/body/div/div/div/main/div/div[1]/section[3]/div/section[1]/ul/li[2]/a/p/span')
    @stadium2.nil? || @stadium2 = page.at('/html/body/div/div/div/main/div/div[1]/section[3]/div/section[1]/ul/li[2]/a/p/span').inner_text

    @stadium3 = page.at('/html/body/div/div/div/main/div/div[1]/section[3]/div/section[1]/ul/li[3]/a/p/span')
    @stadium3.nil? || @stadium3 = page.at('/html/body/div/div/div/main/div/div[1]/section[3]/div/section[1]/ul/li[3]/a/p/span').inner_text

    @stadium4 = page.at('/html/body/div/div/div/main/div/div[1]/section[3]/div/section[2]/ul/li[1]/a/p/span')
    @stadium4.nil? || @stadium4 = page.at('/html/body/div/div/div/main/div/div[1]/section[3]/div/section[2]/ul/li[1]/a/p/span').inner_text

    @stadium5 = page.at('/html/body/div/div/div/main/div/div[1]/section[3]/div/section[2]/ul/li[2]/a/p/span')
    @stadium5.nil? || @stadium5 = page.at('/html/body/div/div/div/main/div/div[1]/section[3]/div/section[2]/ul/li[2]/a/p/span').inner_text

    @stadium6 = page.at('/html/body/div/div/div/main/div/div[1]/section[3]/div/section[2]/ul/li[3]/a/p/span')
    @stadium6.nil? || @stadium6 = page.at('/html/body/div/div/div/main/div/div[1]/section[3]/div/section[2]/ul/li[3]/a/p/span').inner_text

    @time1 = page.at('/html/body/div/div/div/main/div/div[1]/section[3]/div/section[1]/ul/li[1]/a/div[2]/div/time')
    @time1.nil? || @time1 = page.at('/html/body/div/div/div/main/div/div[1]/section[3]/div/section[1]/ul/li[1]/a/div[2]/div/time').inner_text

    @score1 = page.at('/html/body/div/div/div/main/div/div[1]/section[3]/div/section[1]/ul/li[1]/a/div[2]/div/p[1]/span[1]')
    @score1.nil? || @score1 = page.at('/html/body/div/div/div/main/div/div[1]/section[3]/div/section[1]/ul/li[1]/a/div[2]/div/p[1]/span[1]').inner_text.to_i

    @score2 = page.at('/html/body/div/div/div/main/div/div[1]/section[3]/div/section[1]/ul/li[1]/a/div[2]/div/p[1]/span[3]')
    @score2.nil? || @score2 = page.at('/html/body/div/div/div/main/div/div[1]/section[3]/div/section[1]/ul/li[1]/a/div[2]/div/p[1]/span[3]').inner_text.to_i

    @time2 = page.at('/html/body/div/div/div/main/div/div[1]/section[3]/div/section[1]/ul/li[2]/a/div[2]/div/time')
    @time2.nil? || @time2 = page.at('/html/body/div/div/div/main/div/div[1]/section[3]/div/section[1]/ul/li[2]/a/div[2]/div/time').inner_text
    @score3 = page.at('/html/body/div/div/div/main/div/div[1]/section[3]/div/section[1]/ul/li[2]/a/div[2]/div/p[1]/span[1]')
    @score3.nil? || @score3 = page.at('/html/body/div/div/div/main/div/div[1]/section[3]/div/section[1]/ul/li[2]/a/div[2]/div/p[1]/span[1]').inner_text.to_i

    @score4 = page.at('/html/body/div/div/div/main/div/div[1]/section[3]/div/section[1]/ul/li[2]/a/div[2]/div/p[1]/span[3]')
    @score4.nil? || @score4 = page.at('/html/body/div/div/div/main/div/div[1]/section[3]/div/section[1]/ul/li[2]/a/div[2]/div/p[1]/span[3]').inner_text.to_i

    @time3 = page.at('/html/body/div/div/div/main/div/div[1]/section[3]/div/section[1]/ul/li[3]/a/div[2]/div/time')
    @time3.nil? || @time3 = page.at('/html/body/div/div/div/main/div/div[1]/section[3]/div/section[1]/ul/li[3]/a/div[2]/div/time').inner_text

    @score5 = page.at('/html/body/div/div/div/main/div/div[1]/section[3]/div/section[1]/ul/li[3]/a/div[2]/div/p[1]/span[1]')
    @score5.nil? || @score5 = page.at('/html/body/div/div/div/main/div/div[1]/section[3]/div/section[1]/ul/li[3]/a/div[2]/div/p[1]/span[1]').inner_text.to_i

    @score6 = page.at('/html/body/div/div/div/main/div/div[1]/section[3]/div/section[1]/ul/li[3]/a/div[2]/div/p[1]/span[3]')
    @score6.nil? || @score6 = page.at('/html/body/div/div/div/main/div/div[1]/section[3]/div/section[1]/ul/li[3]/a/div[2]/div/p[1]/span[3]').inner_text.to_i

    @time4 = page.at('/html/body/div/div/div/main/div/div[1]/section[3]/div/section[2]/ul/li[1]/a/div[2]/div/time')
    @time4.nil? || @time4 = page.at('/html/body/div/div/div/main/div/div[1]/section[3]/div/section[2]/ul/li[1]/a/div[2]/div/time').inner_text
    @score7 = page.at('/html/body/div/div/div/main/div/div[1]/section[3]/div/section[2]/ul/li[1]/a/div[2]/div/p[1]/span[1]')
    @score7.nil? || @score7 = page.at('/html/body/div/div/div/main/div/div[1]/section[3]/div/section[2]/ul/li[1]/a/div[2]/div/p[1]/span[1]').inner_text.to_i
    @score8 = page.at('/html/body/div/div/div/main/div/div[1]/section[3]/div/section[2]/ul/li[1]/a/div[2]/div/p[1]/span[3]')
    @score8.nil? || @score8 = page.at('/html/body/div/div/div/main/div/div[1]/section[3]/div/section[2]/ul/li[1]/a/div[2]/div/p[1]/span[3]').inner_text.to_i

    @time5 = page.at('/html/body/div/div/div/main/div/div[1]/section[3]/div/section[2]/ul/li[2]/a/div[2]/div/time')
    @time5.nil? || @time5 = page.at('/html/body/div/div/div/main/div/div[1]/section[3]/div/section[2]/ul/li[2]/a/div[2]/div/time').inner_text
    @score9 = page.at('/html/body/div/div/div/main/div/div[1]/section[3]/div/section[2]/ul/li[2]/a/div[2]/div/p[1]/span[1]')
    @score9.nil? || @score9 = page.at('/html/body/div/div/div/main/div/div[1]/section[3]/div/section[2]/ul/li[2]/a/div[2]/div/p[1]/span[1]').inner_text.to_i
    @score10 = page.at('/html/body/div/div/div/main/div/div[1]/section[3]/div/section[2]/ul/li[2]/a/div[2]/div/p[1]/span[3]')
    @score10.nil? || @score10 = page.at('/html/body/div/div/div/main/div/div[1]/section[3]/div/section[2]/ul/li[2]/a/div[2]/div/p[1]/span[3]').inner_text.to_i

    @time6 = page.at('/html/body/div/div/div/main/div/div[1]/section[3]/div/section[2]/ul/li[3]/a/div[2]/div/time')
    @time6.nil? || @time6 = page.at('/html/body/div/div/div/main/div/div[1]/section[3]/div/section[2]/ul/li[3]/a/div[2]/div/time').inner_text
    @score11 = page.at('/html/body/div/div/div/main/div/div[1]/section[3]/div/section[2]/ul/li[3]/a/div[2]/div/p[1]/span[1]')
    @score11.nil? || @score11 = page.at('/html/body/div/div/div/main/div/div[1]/section[3]/div/section[2]/ul/li[3]/a/div[2]/div/p[1]/span[1]').inner_text.to_i
    @score12 = page.at('/html/body/div/div/div/main/div/div[1]/section[3]/div/section[2]/ul/li[3]/a/div[2]/div/p[1]/span[3]')
    @score12.nil? || @score12 = page.at('/html/body/div/div/div/main/div/div[1]/section[3]/div/section[2]/ul/li[3]/a/div[2]/div/p[1]/span[3]').inner_text.to_i

    @status1 = page.at('/html/body/div/div/div/main/div/div[1]/section[3]/div/section[1]/ul/li[1]/a/div[2]/div/p[2]')
    @status1.nil? || @status1 = page.at('/html/body/div/div/div/main/div/div[1]/section[3]/div/section[1]/ul/li[1]/a/div[2]/div/p[2]').inner_text

    @status2 = page.at('/html/body/div/div/div/main/div/div[1]/section[3]/div/section[1]/ul/li[2]/a/div[2]/div/p[2]')
    @status2.nil? || @status2 = page.at('/html/body/div/div/div/main/div/div[1]/section[3]/div/section[1]/ul/li[2]/a/div[2]/div/p[2]').inner_text

    @status3 = page.at('/html/body/div/div/div/main/div/div[1]/section[3]/div/section[1]/ul/li[3]/a/div[2]/div/p[2]')
    @status3.nil? || @status3 = page.at('/html/body/div/div/div/main/div/div[1]/section[3]/div/section[1]/ul/li[3]/a/div[2]/div/p[2]').inner_text

    @status4 = page.at('/html/body/div/div/div/main/div/div[1]/section[3]/div/section[2]/ul/li[1]/a/div[2]/div/p[2]')
    @status4.nil? || @status4 = page.at('/html/body/div/div/div/main/div/div[1]/section[3]/div/section[2]/ul/li[1]/a/div[2]/div/p[2]').inner_text

    @status5 = page.at('/html/body/div/div/div/main/div/div[1]/section[3]/div/section[2]/ul/li[2]/a/div[2]/div/p[2]')
    @status5.nil? || @status5 = page.at('/html/body/div/div/div/main/div/div[1]/section[3]/div/section[2]/ul/li[2]/a/div[2]/div/p[2]').inner_text

    @status6 = page.at('/html/body/div/div/div/main/div/div[1]/section[3]/div/section[2]/ul/li[3]/a/div[2]/div/p[2]')
    @status6.nil? || @status6 = page.at('/html/body/div/div/div/main/div/div[1]/section[3]/div/section[2]/ul/li[3]/a/div[2]/div/p[2]').inner_text

    @pitcher1 = page.at('/html/body/div/div/div/main/div/div[1]/section[3]/div/section[1]/ul/li[1]/a/div[2]/ul[1]/li')
    @pitcher1.nil? || @pitcher1 = page.at('/html/body/div/div/div/main/div/div[1]/section[3]/div/section[1]/ul/li[1]/a/div[2]/ul[1]/li').inner_text

    @pitcher2 = page.at('/html/body/div/div/div/main/div/div[1]/section[3]/div/section[1]/ul/li[1]/a/div[2]/ul[2]/li')
    @pitcher2.nil? || @pitcher2 = page.at('/html/body/div/div/div/main/div/div[1]/section[3]/div/section[1]/ul/li[1]/a/div[2]/ul[2]/li').inner_text
    @pitcher3 = page.at('/html/body/div/div/div/main/div/div[1]/section[3]/div/section[1]/ul/li[2]/a/div[2]/ul[1]/li')
    @pitcher3.nil? || @pitcher3 = page.at('/html/body/div/div/div/main/div/div[1]/section[3]/div/section[1]/ul/li[2]/a/div[2]/ul[1]/li').inner_text
    @pitcher4 = page.at('/html/body/div/div/div/main/div/div[1]/section[3]/div/section[1]/ul/li[2]/a/div[2]/ul[2]/li')
    @pitcher4.nil? || @pitcher4 = page.at('/html/body/div/div/div/main/div/div[1]/section[3]/div/section[1]/ul/li[2]/a/div[2]/ul[2]/li').inner_text
    @pitcher5 = page.at('/html/body/div/div/div/main/div/div[1]/section[3]/div/section[1]/ul/li[3]/a/div[2]/ul[1]/li')
    @pitcher5.nil? || @pitcher5 = page.at('/html/body/div/div/div/main/div/div[1]/section[3]/div/section[1]/ul/li[3]/a/div[2]/ul[1]/li').inner_text
    @pitcher6 = page.at('/html/body/div/div/div/main/div/div[1]/section[3]/div/section[1]/ul/li[3]/a/div[2]/ul[2]/li')
    @pitcher6.nil? || @pitcher6 = page.at('/html/body/div/div/div/main/div/div[1]/section[3]/div/section[1]/ul/li[3]/a/div[2]/ul[2]/li').inner_text
    @pitcher7 = page.at('/html/body/div/div/div/main/div/div[1]/section[3]/div/section[2]/ul/li[1]/a/div[2]/ul[1]/li')
    @pitcher7.nil? || @pitcher7 = page.at('/html/body/div/div/div/main/div/div[1]/section[3]/div/section[2]/ul/li[1]/a/div[2]/ul[1]/li').inner_text
    @pitcher8 = page.at('/html/body/div/div/div/main/div/div[1]/section[3]/div/section[2]/ul/li[1]/a/div[2]/ul[2]/li')
    @pitcher8.nil? || @pitcher8 = page.at('/html/body/div/div/div/main/div/div[1]/section[3]/div/section[2]/ul/li[1]/a/div[2]/ul[2]/li').inner_text
    @pitcher9 = page.at('/html/body/div/div/div/main/div/div[1]/section[3]/div/section[2]/ul/li[2]/a/div[2]/ul[1]/li')
    @pitcher9.nil? || @pitcher9 = page.at('/html/body/div/div/div/main/div/div[1]/section[3]/div/section[2]/ul/li[2]/a/div[2]/ul[1]/li').inner_text
    @pitcher10 = page.at('/html/body/div/div/div/main/div/div[1]/section[3]/div/section[2]/ul/li[2]/a/div[2]/ul[2]/li')
    @pitcher10.nil? || @pitcher10 = page.at('/html/body/div/div/div/main/div/div[1]/section[3]/div/section[2]/ul/li[2]/a/div[2]/ul[2]/li').inner_text
    @pitcher11 = page.at('/html/body/div/div/div/main/div/div[1]/section[3]/div/section[2]/ul/li[3]/a/div[2]/ul[1]/li')
    @pitcher11.nil? || @pitcher11 = page.at('/html/body/div/div/div/main/div/div[1]/section[3]/div/section[2]/ul/li[3]/a/div[2]/ul[1]/li').inner_text
    @pitcher12 = page.at('/html/body/div/div/div/main/div/div[1]/section[3]/div/section[2]/ul/li[3]/a/div[2]/ul[2]/li')
    @pitcher12.nil? || @pitcher12 = page.at('/html/body/div/div/div/main/div/div[1]/section[3]/div/section[2]/ul/li[3]/a/div[2]/ul[2]/li').inner_text

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
