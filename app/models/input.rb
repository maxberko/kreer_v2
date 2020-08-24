class Input < ApplicationRecord
  belongs_to :user
  belongs_to :answer
  belongs_to :tests_question
end
