class Test < ApplicationRecord
  belongs_to :user
  has_many :test_questions
  has_many :questions, through: :test_questions
  acts_as_taggable_on :tags

  JOBTYPES = ['Product Owner', 'Junior Product Manager', 'Senior Product Manager', 'Lead Product Manager', 'CTO']
  validates :name, presence: true
  validates :jobtype, inclusion: { in: Test::JOBTYPES }

  after_save :generate_tests_questions

  def candidates
    self.test_questions.first.inputs.map do |input|
      input.user
    end
  end

  private

  def generate_tests_questions
    self.tag_list.each do |tag|
      Question.where(tag: tag).sample(3).each do |question|
        TestQuestion.create(
          test: self,
          question: question
        )
      end
    end
  end
end
