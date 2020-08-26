class Test < ApplicationRecord
  belongs_to :user
  has_many :test_questions
  has_many :questions, through: :test_questions
  acts_as_taggable_on :tags

  JOBTYPES = ['Associate Product Manager', 'Product Manager', 'Product Owner', 'Junior Product Manager', 'Senior Product Manager', 'Lead Product Manager', 'CTO']
  validates :name, presence: true
  validates :jobtype, inclusion: { in: Test::JOBTYPES }

  after_create :generate_tests_questions

  def candidates
    users = test_questions.first.inputs.map(&:user)
    User.where(id: users)
  end

  def mean_results
    # returns a hash with keys as tags and values as success rate for all users
    candidates_results = candidates.map do |candidate|
      candidate.results_per_tag(self)
    end
    tags = candidates_results.first.keys
    results = {}

    tags.each do |tag|
      mean_rate = candidates_results.map do |result|
        result[tag]
      end.reduce(:+) / candidates_results.count.to_f
      results[tag] = mean_rate
    end
    results
  end

  private

  def generate_tests_questions
    tag_list.each do |tag|
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
