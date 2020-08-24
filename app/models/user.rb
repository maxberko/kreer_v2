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

    include PgSearch::Model
  pg_search_scope :search_by_last_name_and_first_name_and_email,
    against: [ :last_name, :first_name, :email ],
    using: {
      tsearch: { prefix: true }
    }
end
