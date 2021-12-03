# frozen_string_literal: true

require 'test_helper'

class TodoListActivitiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @todo_list_activity = todo_list_activities(:one)
    @todo_list = todo_lists(:one)
  end

  test 'should get index' do
    get todo_list_todo_list_activities_url(todo_list_id: @todo_list.id)
    assert_response :success
  end

  test 'should get new' do
    get new_todo_list_todo_list_activity_url(todo_list_id: @todo_list.id)
    assert_response :success
  end

  test 'should create todo_list_activity' do
    assert_difference('TodoListActivity.count') do
      post todo_list_todo_list_activities_url(todo_list_id: @todo_list.id),
           params: {
             todo_list_activity: {
               todo_list_id: @todo_list_activity.todo_list_id,
               description: @todo_list_activity.description,
               limit_date: @todo_list_activity.limit_date,
               priority: @todo_list_activity.priority,
               title: @todo_list_activity.title
             }
           }
    end

    assert_redirected_to todo_list_url(@todo_list_activity.todo_list_id)
  end

  test 'should show todo_list_activity' do
    get todo_list_todo_list_activity_url(todo_list_id: @todo_list.id, id: @todo_list_activity.id)
    assert_response :success
  end

  test 'should get edit' do
    get edit_todo_list_todo_list_activity_url(todo_list_id: @todo_list.id, id: @todo_list_activity.id)
    assert_response :success
  end

  test 'should update todo_list_activity' do
    patch todo_list_todo_list_activity_url(todo_list_id: @todo_list.id, id: @todo_list_activity.id),
          params: {
            todo_list_activity: {
              description: @todo_list_activity.description,
              limit_date: @todo_list_activity.limit_date,
              priority: @todo_list_activity.priority,
              title: @todo_list_activity.title,
              todo_list_id: @todo_list_activity.todo_list_id
            }
          }
    assert_redirected_to todo_list_url(@todo_list)
  end

  test 'should destroy todo_list_activity' do
    assert_difference('TodoListActivity.count', -1) do
      delete todo_list_todo_list_activity_url(todo_list_id: @todo_list.id, id: @todo_list_activity.id)
    end

    assert_redirected_to todo_list_url
  end
end
