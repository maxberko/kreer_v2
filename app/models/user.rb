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

# me permet de faire user.tests_as_candidate et me sort tous les tests d'un candidat
  def tests_as_candidate
    self.inputs.map(&:test_question).map(&:test).uniq
  end


#def result_for_test(test)
# end


# rdef result_per_test_tag(test, tag)
# end


end
