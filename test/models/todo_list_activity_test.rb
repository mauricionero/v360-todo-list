# frozen_string_literal: true

require 'test_helper'

class TodoListActivityTest < ActiveSupport::TestCase
  test 'valid creation' do
    assert TodoListActivity.create(
      todo_list_id: todo_lists(:one).id,
      title: 'valid title',
      description: 'valid description',
      limit_date: DateTime.now,
      priority: 3
    )
  end

  test 'invalid title (not present)' do
    todo_list_activity = TodoListActivity.new(
      todo_list_id: todo_lists(:one).id,
      description: 'valid description',
      limit_date: DateTime.now,
      priority: 3
    )

    assert_not todo_list_activity.save

    assert todo_list_activity.errors.full_messages == ["Title can't be blank"]
  end

  test 'invalid description (too big)' do
    todo_list_activity = TodoListActivity.new(
      todo_list_id: todo_lists(:one).id,
      title: 'valid title',
      description: 'a' * 257,
      limit_date: DateTime.now,
      priority: 3
    )

    assert_not todo_list_activity.save

    assert todo_list_activity.errors.full_messages == ['Description is too long (maximum is 255 characters)']
  end

  test 'invalid priority (numericality)' do
    todo_list_activity = TodoListActivity.new(
      todo_list_id: todo_lists(:one).id,
      title: 'valid title',
      description: 'valid description',
      limit_date: DateTime.now,
      priority: 'a'
    )

    assert_not todo_list_activity.save

    assert todo_list_activity.errors.full_messages == ['Priority is not a number']
  end
end
