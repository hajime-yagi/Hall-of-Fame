# frozen_string_literal: true

class CreateGames < ActiveRecord::Migration[5.2]
  def change
    create_table :games do |t|
      t.string :match
      t.string :match_time
      t.string :stadium
      t.integer :result_home
      t.integer :result_away

      t.timestamps
    end
  end
end
