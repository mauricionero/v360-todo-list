# frozen_string_literal: true

require 'application_system_test_case'

class TodoListActivitiesTest < ApplicationSystemTestCase
  setup do
    @todo_list_activity = todo_list_activities(:one)
  end

  test 'visiting the index' do
    visit todo_list_activities_url
    assert_selector 'h1', text: 'Todo List Activities'
  end

  test 'creating a Todo list activity' do
    visit todo_list_activities_url
    click_on 'New Todo List Activity'

    fill_in 'Description', with: @todo_list_activity.description
    fill_in 'Limit date', with: @todo_list_activity.limit_date
    fill_in 'Priority', with: @todo_list_activity.priority
    fill_in 'Title', with: @todo_list_activity.title
    fill_in 'Todo list', with: @todo_list_activity.todo_list_id
    click_on 'Create Todo list activity'

    assert_text 'Todo list activity was successfully created'
    click_on 'Back'
  end

  test 'updating a Todo list activity' do
    visit todo_list_activities_url
    click_on 'Edit', match: :first

    fill_in 'Description', with: @todo_list_activity.description
    fill_in 'Limit date', with: @todo_list_activity.limit_date
    fill_in 'Priority', with: @todo_list_activity.priority
    fill_in 'Title', with: @todo_list_activity.title
    fill_in 'Todo list', with: @todo_list_activity.todo_list_id
    click_on 'Update Todo list activity'

    assert_text 'Todo list activity was successfully updated'
    click_on 'Back'
  end

  test 'destroying a Todo list activity' do
    visit todo_list_activities_url
    page.accept_confirm do
      click_on 'Destroy', match: :first
    end

    assert_text 'Todo list activity was successfully destroyed'
  end
end
