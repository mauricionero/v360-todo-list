# frozen_string_literal: true

# removes an unused field limit_date from todo_lists
class RemoveLimitDateFromTodoLists < ActiveRecord::Migration[6.1]
  def change
    remove_column :todo_lists, :limit_date, :datetime
  end
end
