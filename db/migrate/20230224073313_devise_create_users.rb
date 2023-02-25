# frozen_string_literal: true

class DeviseCreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :first_name, null: false
      t.string :last_name, null: false
      t.string :email,              null: false
      t.string :encrypted_password, null: false
      t.string :type, default: 'User', null: false

      t.timestamps null: false
    end

    add_index :users, :email,                unique: true
  end
end
