# frozen_string_literal: true

# creates the table todo_list_activities
class CreateTodoListActivities < ActiveRecord::Migration[6.1]
  def change
    create_table :todo_list_activities do |t|
      t.integer :todo_list_id
      t.string :title, limit: 30
      t.string :description, limit: 255
      t.integer :priority, limit: 2, default: 1
      t.datetime :limit_date

      t.timestamps
    end
    add_index :todo_list_activities, :todo_list_id
  end
end
