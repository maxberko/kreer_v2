class Question < ApplicationRecord
  has_many :test_questions
  has_many :answers

  validates :description, presence: true

  CATEGORIES = {  pricing: "Pricing",
                  product_execution: "Product Execution",
                  strategy: "Strategy",
                  product_sense: "ProductSense",
                  market_research: "Market Research",
                  product_design: "Product Design" }
end
