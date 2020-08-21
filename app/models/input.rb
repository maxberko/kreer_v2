class Input < ApplicationRecord
  belongs_to :users
  belongs_to :answers
  belongs_to :tests_question
end
