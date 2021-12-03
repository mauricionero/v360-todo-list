# frozen_string_literal: true

class TodoListActivity < ApplicationRecord
  validates :title, presence: true, length: { maximum: 30 }
  validates :description, length: { maximum: 255 }
  validates :priority, numericality: { only_integer: true }
end
