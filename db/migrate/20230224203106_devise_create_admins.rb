# frozen_string_literal: true

class DeviseCreateAdmins < ActiveRecord::Migration[7.0]
  def change
    create_table :admins do |t|
      t.string :email,              null: false
      t.string :encrypted_password, null: false

      t.timestamps null: false
    end

    add_index :admins, :email,                unique: true
  end
end
