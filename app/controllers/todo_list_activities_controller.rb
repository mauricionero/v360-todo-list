# frozen_string_literal: true

# todo_list_activities CRUD
class TodoListActivitiesController < ApplicationController
  before_action :set_todo_list_activity, only: %i[show edit update destroy]
  before_action :set_todo_list

  # GET /todo_list_activities or /todo_list_activities.json
  def index
    @todo_list_activities = TodoListActivity.all
  end

  # GET /todo_list_activities/1 or /todo_list_activities/1.json
  def show; end

  # GET /todo_list_activities/new
  def new
    @todo_list_activity = TodoListActivity.new
  end

  # GET /todo_list_activities/1/edit
  def edit; end

  # POST /todo_list_activities or /todo_list_activities.json
  def create
    @todo_list_activity = TodoListActivity.new(todo_list_activity_params)

    respond_to do |format|
      if @todo_list_activity.save
        format.html { redirect_to @todo_list, notice: 'Todo list activity was successfully created.' }
        format.json { render :show, status: :created, location: @todo_list_activity }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @todo_list_activity.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /todo_list_activities/1
  # PATCH/PUT /todo_list_activities/1.json
  def update
    respond_to do |format|
      if @todo_list_activity.update(todo_list_activity_params)
        format.html { redirect_to @todo_list, notice: 'Todo list activity was successfully updated.' }
        format.json { render :show, status: :ok, location: @todo_list_activity }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @todo_list_activity.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /todo_list_activities/1 or /todo_list_activities/1.json
  def destroy
    @todo_list_activity.destroy
    respond_to do |format|
      format.html { redirect_to @todo_list, notice: 'Todo list activity was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_todo_list_activity
    @todo_list_activity = TodoListActivity.find(params[:id])
  end

  # this sets the todo_list parent
  def set_todo_list
    @todo_list = TodoList.find(todo_list_id)
  end

  def todo_list_id
    params['todo_list_id']
  end

  # Only allow a list of trusted parameters through.
  def todo_list_activity_params
    params.require(:todo_list_activity).permit(:todo_list_id, :title, :description, :priority, :limit_date)
  end
end
