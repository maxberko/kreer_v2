class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :inputs
  has_many :tests

  validates :first_name, presence: true
  validates :last_name, presence: true

  has_one_attached :photo
  after_create :set_full_name

  include PgSearch::Model
  pg_search_scope :search_by_last_name_and_first_name_and_email,
                  against: [ :last_name, :first_name, :email, :full_name ],
                  using: {
                    tsearch: { prefix: true }
                  }

  def set_full_name
    self.full_name = "#{self.first_name} #{self.last_name}"
    self.save
  end

  def result_for_test(test)
    inputs = []
    test_questions = test.test_questions
    test_questions.each do |tq|
      inputs << tq.inputs.where(user: self)
    end
    inputs.flatten!
    answers = inputs.map(&:answer)
    correct_answers = 0
    answers.each do |answer|
      correct_answers += 1 if answer.correct
    end
    ((correct_answers.to_f / test_questions.length.to_f) * 100).truncate
  end

  # me permet de faire user.tests_as_candidate et me sort tous les tests d'un candidat
  def tests_as_candidate
    inputs.map(&:test_question).map(&:test).uniq
  end

  def completion_for_test(test)
    # return a percentage
    inputs = []
    test_questions = test.test_questions
    test_questions.each do |tq|
      inputs << tq.inputs.where(user: self)
    end
    inputs.flatten!
    answers = inputs.map(&:answer)
    completion_rate = ((answers.length.to_f / test_questions.length.to_f) * 100).truncate
  end

  def results_per_tag(test)
    # returns a hash : keys are tags and values are percentage of success
    test_questions = test.test_questions
    inputs = []
    total_per_tag = {}
    inputs_per_tag = {}
    results_per_tag = {}

    test_questions.each do |tq|
      question_tag = tq.question.tag

      if total_per_tag.key?(question_tag.to_sym)
        total_per_tag[question_tag.to_sym] += 1
      else
        total_per_tag[question_tag.to_sym] = 1
      end

      user_input = tq.inputs.where(user: self).first
      if user_input
        inputs_per_tag[question_tag.to_sym] = [] unless inputs_per_tag.key?(question_tag.to_sym)
        inputs_per_tag[question_tag.to_sym] << user_input
      end
    end
    answers = inputs.map(&:answer)

    total_per_tag.each do |tag, count|
      if inputs_per_tag[tag]
        correct_answers_count = inputs_per_tag[tag].select do |input|
          input.answer.correct
        end.count
        results_per_tag[tag] = ((correct_answers_count / count.to_f) * 100).truncate
      else
        results_per_tag[tag] = 0
      end
    end
    results_per_tag
  end
end
