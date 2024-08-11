# frozen_string_literal: true

class CreateUsers < ActiveRecord::Migration[7.1]
  def change
    create_table :users do |t|
      t.string :username, null: false
      t.string :email, null: true
      t.string :password_digest, null: false

      t.timestamps null: false
    end

    add_index :users, :email,                unique: true
    add_index :users, :username,             unique: true    
  end
end
