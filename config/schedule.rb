# frozen_string_literal: true

# Use this file to easily define all of your cron jobs.
#
# It's helpful, but not entirely necessary to understand cron before proceeding.
# http://en.wikipedia.org/wiki/Cron

# Example:
#
# set :output, "/path/to/my/cron_log.log"
#
# every 2.hours do
#   command "/usr/bin/some_great_command"
#   runner "MyModel.some_method"
#   rake "some:great:rake:task"
# end
#
# every 4.days do
#   runner "AnotherModel.prune_old_records"
# end
require File.expand_path("#{File.dirname(__FILE__)}/environment")

rails_env = ENV['RAILS_ENV'] || :development

set :environment, rails_env

set :output, "#{Rails.root}/log/cron.log"

job_type :rake,
         'export PATH="$HOME/.rbenv/bin:$PATH"; eval "$(rbenv init -)"; cd :path && RAILS_ENV=:environment bundle exec rake :task :output'

every 1.day, at: "22:50" do
  rake 'update_game:update_game_scores'
end

every 1.day, at: "23:00" do
  rake 'check_expect:check_expect_score'
end

every 1.day, at: "08:00" do
  rake 'update_game:update_game_info'
end

work_hour_per_two = (9..22).select { |_| (_ % 1).zero? }.map { |_| "#{_}:30" }
every 1.day, at: work_hour_per_two do
  rake 'update_game:update_game_scores'
end
