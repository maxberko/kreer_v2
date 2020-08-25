class Question < ApplicationRecord
  has_many :test_questions
  has_many :answers

  validates :description, presence: true

  CATEGORIES = {  technical: "Technical",
                  product: "Product",
                  maths: "Maths",
                  mobile: "Mobile",
                  market_research: "Market Research",
                  product_design: "Product Design" }
end
