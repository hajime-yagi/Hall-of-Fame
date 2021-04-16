# frozen_string_literal: true

class CreateGames < ActiveRecord::Migration[5.2]
  def change
    create_table :games do |t|
      t.string :team_a
      t.string :team_b
      t.string :match_time
      t.string :stadium
      t.string :pitcher_a
      t.string :pitcher_b
      t.string :status
      t.integer :result_home
      t.integer :result_away

      t.timestamps
    end
  end
end
