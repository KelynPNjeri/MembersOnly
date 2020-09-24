# frozen_string_literal: true

class AddFieldsToUser < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :name, :string
    add_column :users, :username, :string, unique: true
  end
end
