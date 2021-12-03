# frozen_string_literal: true

class TodoList < ApplicationRecord
  validates :title, presence: true, length: { maximum: 30 }
  validates :description, length: { maximum: 255 }
  validates_format_of :color, with: /\A#(?:\h{3}){1,2}\z/
end
