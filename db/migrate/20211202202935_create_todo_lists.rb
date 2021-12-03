# frozen_string_literal: true

# create table TodoLists
class CreateTodoLists < ActiveRecord::Migration[6.1]
  def change
    create_table :todo_lists do |t|
      t.string :title, limit: 30, null: false
      t.string :description, limit: 255
      t.datetime :limit_date
      t.string :color, limit: 7, null: false, default: '#00FFFF'

      t.timestamps
    end
  end
end
