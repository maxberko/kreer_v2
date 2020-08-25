# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
TestQuestion.destroy_all
Answer.destroy_all
Question.destroy_all
Test.destroy_all
User.destroy_all

user1 = User.create!(
  first_name: "Louis",
  last_name: "Deboutin",
  email: "test1@gmail.com",
  password: "password",
  role: "Recruiter"
)

user2 = User.create!(
  first_name: "Jean",
  last_name: "Michel",
  email: "recruteur@gmail.com",
  password: "password",
  role: "Recruiter"
)

user3 = User.create!(
  first_name: "Jean",
  last_name: "Michel",
  email: "candidat@gmail.com",
  password: "password",
  role: "Candidate"
)

puts "#{User.count} users created"

question1 = Question.create!(
  description: "How would you price a brand new Kindle book?",
  tag: "pricing"
)

question2 = Question.create!(
  description: "How would you set success metrics for FB dating?",
  tag: "product_execution"
)

question3 = Question.create!(
  description: "What goals would you set for growth for Facebook Lite?",
  tag: "product_execution"
)

question4 = Question.create!(
  description: "How do you price Amazon S3 new tier?",
  tag: "pricing"
)
puts "#{Question.count} questions created"

answer1 = Answer.create!(
  description: "This is the right answer !",
  correct: true,
  question: question4
)

answer2 = Answer.create!(
  description: "This is the wrong answer !",
  correct: true,
  question: question4
)

answer3 = Answer.create!(
  description: "This is the wrong answer !",
  correct: false,
  question: question1
)

answer4 = Answer.create!(
  description: "This is the good answer !",
  correct: true,
  question: question1
)

puts "#{Answer.count} answers created"

test1 = Test.new(
  name: "Apple",
  date: Date.today,
  jobtype: "Product Owner",
  user: user2
)

test1.tag_list.add("pricing")
test1.save

puts "#{Test.count} test created"
