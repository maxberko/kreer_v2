class Test < ApplicationRecord
  belongs_to :user
  has_many :test_questions
  has_many :questions, through: :test_questions
  acts_as_taggable_on :tags

  JOBTYPES = ['Product Owner', 'Junior Product Manager', 'Senior Product Manager', 'Lead Product Manager', 'CTO']
  validates :name, presence: true
  validates :jobtype, inclusion: { in: Test::JOBTYPES }

  after_create :generate_tests_questions

  private

  def generate_tests_questions
    self.tag_list.each do |tag|
      possible_questions = Question.where(tag: tag)
      sampled_questions = possible_questions.sample(2)
      sampled_questions.each do |question|
        TestQuestion.create(
          test: self,
          question: question
        )
      end
    end
  end
end
