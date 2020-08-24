class Test < ApplicationRecord
  belongs_to :user
  has_many :test_questions
  has_many :questions, through: :test_questions
  acts_as_taggable_on :tags

  JOBTYPES = ['Product Manager', 'Associate Product Manager', 'Product Owner', 'Junior Product Manager', 'Senior Product Manager', 'Lead Product Manager', 'CTO']
  validates :name, presence: true
  validates :jobtype, inclusion: { in: Test::JOBTYPES }

  after_save :generate_tests_questions

  def candidates
    # @test.candidates -> tableau de users pour un test
  end

  private

  def generate_tests_questions
    tag_list.each do |tag|
      Question.where(tag: tag).sample(3).each do |question|
        TestQuestion.create(
          test: self,
          question: question
        )
      end
    end
  end
end
