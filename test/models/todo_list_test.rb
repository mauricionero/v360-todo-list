# frozen_string_literal: true

require 'test_helper'

class TodoListTest < ActiveSupport::TestCase
  test 'valid creation' do
    assert TodoList.create(
      title: 'valid title',
      description: 'valid description',
      limit_date: DateTime.now,
      color: '#ABCDEF'
    )
  end

  test 'invalid title (not present)' do
    todo_list = TodoList.new(
      description: 'valid description',
      limit_date: DateTime.now,
      color: '#ABCDEF'
    )

    assert_not todo_list.save

    assert todo_list.errors.full_messages == ["Title can't be blank"]
  end

  test 'invalid description (too big)' do
    todo_list = TodoList.new(
      title: 'valid title',
      description: 'a' * 257,
      limit_date: DateTime.now,
      color: '#ABCDEF'
    )

    assert_not todo_list.save

    assert todo_list.errors.full_messages == ['Description is too long (maximum is 255 characters)']
  end

  test 'invalid color (format)' do
    todo_list = TodoList.new(
      title: 'valid title',
      description: 'valid description',
      limit_date: DateTime.now,
      color: 'G23456'
    )

    assert_not todo_list.save

    assert todo_list.errors.full_messages == ['Color is invalid']
  end
end
