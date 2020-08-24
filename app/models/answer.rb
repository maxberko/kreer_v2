class Answer < ApplicationRecord
  belongs_to :question
  has_many :inputs

  validates :description, presence: true
  validates_inclusion_of :correct, in: [true, false]
end
