# frozen_string_literal: true

class CreateExpects < ActiveRecord::Migration[5.2]
  def change
    create_table :expects do |t|
      t.integer :home_score
      t.integer :away_score
      t.string  :deadline
      t.references :user, foreign_key: true
      t.references :game, foreign_key: true

      t.timestamps
    end
  end
end
