# frozen_string_literal: true

class SorceryCore < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name, null: false
      t.string  :email, null: false
      t.string  :crypted_password
      t.string  :salt
      t.integer :favorite_team, default: 0, null: false
      t.integer :team_point, default: 0, null: false
      t.text    :introduction
      t.string  :avatar
      t.integer :point, default: 0, null: false
      t.timestamps null: false
    end

    add_index :users, :email, unique: true
  end
end
