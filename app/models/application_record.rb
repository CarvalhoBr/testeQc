class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true

  has_one :question_accesses
end
