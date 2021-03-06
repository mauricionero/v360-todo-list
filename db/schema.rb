# frozen_string_literal: true

# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20_211_203_005_909) do
  create_table 'todo_list_activities', force: :cascade do |t|
    t.integer 'todo_list_id'
    t.string 'title', limit: 30
    t.string 'description', limit: 255
    t.integer 'priority', limit: 2, default: 1
    t.datetime 'limit_date'
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
    t.index ['todo_list_id'], name: 'index_todo_list_activities_on_todo_list_id'
  end

  create_table 'todo_lists', force: :cascade do |t|
    t.string 'title', limit: 30, null: false
    t.string 'description', limit: 255
    t.string 'color', limit: 7, default: '#00FFFF', null: false
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
  end
end
