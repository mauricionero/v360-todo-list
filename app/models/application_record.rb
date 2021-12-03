# frozen_string_literal: true

# can be useful in the future to have some common methods
class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true
end
