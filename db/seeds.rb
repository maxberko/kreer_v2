Input.destroy_all
TestQuestion.destroy_all
Answer.destroy_all
Question.destroy_all
Test.destroy_all
User.destroy_all

user1 = User.create!(
  first_name: "Maxime",
  last_name: "Berko",
  email: "test1@gmail.com",
  password: "password",
  role: "Recruiter"
)

user2 = User.create!(
  first_name: "Robin",
  last_name: "Crochet",
  email: "recruteur@gmail.com",
  password: "password",
  role: "Recruiter"
)

user3 = User.create!(
  first_name: "Romain",
  last_name: "Ponsot",
  email: "candidat3@gmail.com",
  password: "password",
  role: "Candidate"
)

user4 = User.create!(
  first_name: "Manon",
  last_name: "Demandolx",
  email: "candidat4@gmail.com",
  password: "password",
  role: "Candidate"
)

user5 = User.create!(
  first_name: "Béline",
  last_name: "Neveu",
  email: "candidat5@gmail.com",
  password: "password",
  role: "Candidate"
)
user6 = User.create!(
  first_name: "Philippe",
  last_name: "Lelien",
  email: "candidat6@gmail.com",
  password: "password",
  role: "Candidate"
)
user7 = User.create!(
  first_name: "Alexis",
  last_name: "Bourvis",
  email: "candidat7@gmail.com",
  password: "password",
  role: "Candidate"
)
user8 = User.create!(
  first_name: "Matthieu",
  last_name: "Deveze",
  email: "candidat8@gmail.com",
  password: "password",
  role: "Candidate"
)
user9 = User.create!(
  first_name: "Paul",
  last_name: "Marmier",
  email: "candidat9@gmail.com",
  password: "password",
  role: "Candidate"
)
user10 = User.create!(
  first_name: "Paul-Henry",
  last_name: "Matthieu",
  email: "candidat10@gmail.com",
  password: "password",
  role: "Candidate"
)
user11 = User.create!(
  first_name: "Patrice",
  last_name: "Berko",
  email: "candidat11@gmail.com",
  password: "password",
  role: "Candidate"
)
user12 = User.create!(
  first_name: "Thomas",
  last_name: "Vendrell",
  email: "candidat12@gmail.com",
  password: "password",
  role: "Candidate"
)
user13 = User.create!(
  first_name: "Julia",
  last_name: "Berkojolie",
  email: "candidat13@gmail.com",
  password: "password",
  role: "Candidate"
)

puts "#{User.count} users created"

question1 = Question.create!(tag:"product", description:"What best defines the role of a PM?")
question2 = Question.create!(tag:"product", description:"With whom does the product Manager interact the most daily?")
question3 = Question.create!(tag:"product", description:"Which one of these quality is the least important for being a good PM? Is it being?...")
question4 = Question.create!(tag:"product", description:"When building a payment page with different payment options, which module would you NOT use to ask the user to pick a specific payment method?")
question5 = Question.create!(tag:"product", description:"What are the two things you do first when building a new feature?")
question6 = Question.create!(tag:"product", description:"What is usually the main purpose of an MVP?")
question7 = Question.create!(tag:"product", description:"In the following list, which are the 3 true C2C marketplaces?")
question8 = Question.create!(tag:"mobile", description:"Compared to native apps, what do you think applies best to HTML5 apps:")
question9 = Question.create!(tag:"product", description:"Which of these terms is not related to Agile methodologies")
question10 = Question.create!(tag:"technical", description:"PHP is a coding language that is:")
question11 = Question.create!(tag:"technical", description:"Which of these languages is typically used for the structure of a web page?")
question12 = Question.create!(tag:"technical", description:"Which of these languages is typically used for the interactions within a page of a website ?")
question13 = Question.create!(tag:"technical", description:"Which of these languages is typically used for the look and style of a page?")
question14 = Question.create!(tag:"technical", description:"What system helps reducing the loading time of a page?")
question15 = Question.create!(tag:"technical", description:"What is a 'token'?")
question16 = Question.create!(tag:"technical", description:"Which of these concepts is NOT specific to Object Oriented programming?")
question17 = Question.create!(tag:"technical", description:"What is MySQL?")
question18 = Question.create!(tag:"mobile", description:"Which support is the best choice for having developers available ?")
question19 = Question.create!(tag:"mobile", description:"Which support is the best choice for iterating quickly?")
question20 = Question.create!(tag:"mobile", description:"Which support is the best choice for maximizing margin during online payment ?")
question21 = Question.create!(tag:"mobile", description:"Which support is the best choice for sending notifications ?")
question22 = Question.create!(tag:"mobile", description:"Which support is the best choice for accessing content while offline ?")
question23 = Question.create!(tag:"mobile", description:"For a product like BlaBlaCar, if you already have an app for iOS and Android smartphones, what other mobile platform do you target first ?")
question24 = Question.create!(tag:"maths", description:"Let's say your target market is 1M users and you currently have 100k users. With a month-over-month growth of 100%, how many months are necessary until you reach the total market ?")
question25 = Question.create!(tag:"maths", description:"Consider a sink containing exactly 12 liters of water. If water is drained from the sink until it holds exactly 6 liters of water less than the quantity drained away, how many liters of water were drained away ?")
question26 = Question.create!(tag:"maths", description:"A coin has two sides. One side has the number 1 on it and the other side has the number 2 on it. If the coin is flipped three times what is the probability that the sum of the numbers on the landing side of the coin will be strictly greater than 4 ?")
question27 = Question.create!(tag:"maths", description:"We are conducting an A/B test on the home page. Each page has 1/2 chance to be displayed. A user sees three times the home page, what is the probability that he sees only page A ?")
question28 = Question.create!(tag:"maths", description:"An advertising campaign goes as follows:- It's a banner of 300*150 px on a Travel Website.- It lasts 4 weeks for a total budget of 20 000€.- your CPM is 20€.- the CTR is 1%.- the conversion rate is 10%.NB: CPM = Cost for every 1000 impressions of the banner CTR = clic through rate on that banner. What is the cost per conversion?")
question29 = Question.create!(tag:"software", description:"What software would you use to track user behaviour ?")
question30 = Question.create!(tag:"software", description:"What is the last version of Internet Explorer that is vastly supported ?")
question31 = Question.create!(tag:"software", description:"What kind of agile board can you create using JIRA ?")
question32 = Question.create!(tag:"technical", description:"Where would you implement Google Analytics tracking snippet code ?")
question33 = Question.create!(tag:"software", description:"Which of these tools CAN'T be used to prototype an interface ?")
# question34 = Question.create!(tag:"software", description:"What is the purpose of an A/B test ?")
question35 = Question.create!(tag:"agile", description:"Which of these is NOT an agile ceremonial ?")
question36 = Question.create!(tag:"agile", description:"An agile stand-up is a...")
question37 = Question.create!(tag:"agile", description:"What is NOT a form of agile team organization ?")
puts "#{Question.count} questions created"


answer1 = Answer.create(description:"The PM is the facilitator for a product development team that self-organizes and makes changes quickly.  The PM manages the process for how information is exchanged.", correct:true, question: question1)
answer2 = Answer.create(description:"The PM focuses on the strategies and tactics that are associated with marketing products including: market segmentation, product strategy, positioning, driving awareness, assisting buyer informational needs, competitive positioning", correct:false, question: question1)
answer3 = Answer.create(description:"The PM is responsible for orchestrating the various activities associated with ensuring that a product is delivered that meets users' needs. He is responsible for defining - in detail - the product that the engineering team will build.", correct:false, question: question1)
answer4 = Answer.create(description:"Community Management team", correct:false, question: question2)
answer5 = Answer.create(description:"Support team", correct:false, question: question2)
answer6 = Answer.create(description:"Executive team", correct:false, question: question2)
answer7 = Answer.create(description:"Development team", correct:true, question: question2)
answer8 = Answer.create(description:"Marketing team", correct:false, question: question2)
answer9 = Answer.create(description:"Human Resources team", correct:false, question: question2)
answer10 = Answer.create(description:"a good manager", correct:true, question: question3)
answer11 = Answer.create(description:"good at prioritizing", correct:false, question: question3)
answer12 = Answer.create(description:"good at understanding technical trade-offs", correct:false, question: question3)
answer13 = Answer.create(description:"a good communicator", correct:false, question: question3)
answer14 = Answer.create(description:"good at simplifying", correct:false, question: question3)
answer15 = Answer.create(description:"List box", correct:false, question: question4)
answer16 = Answer.create(description:"Checkboxes", correct:true, question: question4)
answer17 = Answer.create(description:"Radio buttons", correct:false, question: question4)
answer18 = Answer.create(description:"Write specifications", correct:false, question: question5)
answer19 = Answer.create(description:"Analyze data", correct:true, question: question5)
answer20 = Answer.create(description:"Do a mock up", correct:false, question: question5)
answer21 = Answer.create(description:"Define the design", correct:false, question: question5)
answer22 = Answer.create(description:"Make a workflow", correct:false, question: question5)
answer23 = Answer.create(description:"Benchmark", correct:false, question: question5)
answer24 = Answer.create(description:"Validate technical feasibility.", correct:false, question: question6)
answer25 = Answer.create(description:"Test product market fit.", correct:true, question: question6)
answer26 = Answer.create(description:"Reward the most valuable team player.", correct:false, question: question6)
answer27 = Answer.create(description:"Ship fast a private release for internal testing.", correct:false, question: question6)
answer28 = Answer.create(description:"Etsy", correct:true, question: question7)
answer29 = Answer.create(description:"Github", correct:false, question: question7)
answer30 = Answer.create(description:"Pinterest", correct:false, question: question7)
answer31 = Answer.create(description:"Paypal", correct:false, question: question7)
answer32 = Answer.create(description:"Craigslist", correct:true, question: question7)
answer33 = Answer.create(description:"Airbnb", correct:true, question: question7)
answer34 = Answer.create(description:"Uber", correct:false, question: question7)
answer35 = Answer.create(description:"Better user experience, but harder to implement.", correct:false, question: question8)
answer36 = Answer.create(description:"Preferred by users, but harder to maintain.", correct:false, question: question8)
answer37 = Answer.create(description:"Easier to scale cross-platform, but interactions are less fluid.", correct:true, question: question8)
answer38 = Answer.create(description:"Daily stand-up", correct:false, question: question9)
answer39 = Answer.create(description:"Lean", correct:false, question: question9)
answer40 = Answer.create(description:"Poker planning", correct:false, question: question9)
answer41 = Answer.create(description:"Cycle velocity", correct:true, question: question9)
answer42 = Answer.create(description:"User stories", correct:false, question: question9)
answer43 = Answer.create(description:"SprintScrum", correct:false, question: question9)
answer44 = Answer.create(description:"Interpreted", correct:true, question: question10)
answer45 = Answer.create(description:"Compiled", correct:false, question: question10)
answer46 = Answer.create(description:"CSS", correct:false, question: question11)
answer47 = Answer.create(description:"PHP", correct:false, question: question11)
answer48 = Answer.create(description:"HTML", correct:true, question: question11)
answer49 = Answer.create(description:"Javascript", correct:false, question: question11)
answer50 = Answer.create(description:"CSS", correct:false, question: question12)
answer51 = Answer.create(description:"PHP", correct:false, question: question12)
answer52 = Answer.create(description:"HTML", correct:false, question: question12)
answer53 = Answer.create(description:"Javascript", correct:true, question: question12)
answer54 = Answer.create(description:"CSS", correct:true, question: question13)
answer55 = Answer.create(description:"PHP", correct:false, question: question13)
answer56 = Answer.create(description:"HTML", correct:false, question: question13)
answer57 = Answer.create(description:"Javascript", correct:false, question: question13)
answer58 = Answer.create(description:"Cookies", correct:false, question: question14)
answer59 = Answer.create(description:"Caching", correct:true, question: question14)
answer60 = Answer.create(description:"Private browsing", correct:false, question: question14)
answer61 = Answer.create(description:"API", correct:false, question: question14)
answer62 = Answer.create(description:"An identifier used for authentification", correct:true, question: question15)
answer63 = Answer.create(description:"A system for encrypting data?", correct:false, question: question15)
answer64 = Answer.create(description:"A programmable interface", correct:false, question: question15)
answer65 = Answer.create(description:"Inheritance", correct:false, question: question16)
answer66 = Answer.create(description:"Methods", correct:true, question: question16)
answer67 = Answer.create(description:"Classes", correct:false, question: question16)
answer68 = Answer.create(description:"Database", correct:true, question: question17)
answer69 = Answer.create(description:"Caching system", correct:false, question: question17)
answer70 = Answer.create(description:"Load balancer", correct:false, question: question17)
answer71 = Answer.create(description:"Mobile web", correct:true, question: question18)
answer72 = Answer.create(description:"Mobile apps", correct:false, question: question18)
answer73 = Answer.create(description:"Mobile web", correct:true, question: question19)
answer74 = Answer.create(description:"Mobile apps", correct:false, question: question19)
answer75 = Answer.create(description:"Mobile web", correct:true, question: question20)
answer76 = Answer.create(description:"Mobile apps", correct:false, question: question20)
answer77 = Answer.create(description:"Mobile web", correct:false, question: question21)
answer78 = Answer.create(description:"Mobile apps", correct:true, question: question21)
answer79 = Answer.create(description:"Mobile web", correct:false, question: question22)
answer80 = Answer.create(description:"Mobile apps", correct:true, question: question22)
answer81 = Answer.create(description:"iOS tablets", correct:false, question: question23)
answer82 = Answer.create(description:"Mobile website", correct:true, question: question23)
answer83 = Answer.create(description:"Android wear", correct:false, question: question23)
answer84 = Answer.create(description:"Android tablets", correct:false, question: question23)
answer85 = Answer.create(description:"Windows phone", correct:false, question: question23)
answer86 = Answer.create(description:"15 month", correct:false, question: question24)
answer87 = Answer.create(description:"12 months", correct:false, question: question24)
answer88 = Answer.create(description:"9 months", correct:false, question: question24)
answer89 = Answer.create(description:"3 months", correct:true, question: question24)
answer90 = Answer.create(description:"2", correct:false, question: question25)
answer91 = Answer.create(description:"3", correct:true, question: question25)
answer92 = Answer.create(description:"6", correct:false, question: question25)
answer93 = Answer.create(description:"9", correct:false, question: question25)
answer94 = Answer.create(description:"1/2", correct:false, question: question26)
answer95 = Answer.create(description:"1/4", correct:false, question: question26)
answer97 = Answer.create(description:"1/16", correct:false, question: question26)
answer98 = Answer.create(description:"1/8", correct:true, question: question26)
answer99 = Answer.create(description:"1/2", correct:false, question: question27)
answer100 = Answer.create(description:"1/4", correct:false, question: question27)
answer101 = Answer.create(description:"1/8", correct:true, question: question27)
answer102 = Answer.create(description:"1/16", correct:false, question: question27)
answer103 = Answer.create(description:"5", correct:false, question: question28)
answer104 = Answer.create(description:"20", correct:true, question: question28)
answer105 = Answer.create(description:"100", correct:false, question: question28)
answer106 = Answer.create(description:"1", correct:false, question: question28)
answer107 = Answer.create(description:"Mixpanel", correct:true, question:question29)
answer108 = Answer.create(description:"Jira", correct:false, question:question29)
answer109 = Answer.create(description:"Cloudinary", correct:false, question:question29)
answer110 = Answer.create(description:"Mailchimp", correct:false, question:question29)
answer111 = Answer.create(description:"10", correct:false, question:question30)
answer112 = Answer.create(description:"11", correct:true, question:question30)
answer113 = Answer.create(description:"12", correct:false, question:question30)
answer114 = Answer.create(description:"None", correct:false, question:question30)
answer115 = Answer.create(description:"Sprint", correct:true, question:question31)
answer116 = Answer.create(description:"Trello", correct:false, question:question31)
answer117 = Answer.create(description:"White boards", correct:false, question:question31)
answer118 = Answer.create(description:"Black boards", correct:false, question:question31)
answer119 = Answer.create(description:"In the back-end", correct:false, question:question32)
answer120 = Answer.create(description:"In the front-end", correct:true, question:question32)
answer121 = Answer.create(description:"Jira", correct:true, question:question33)
answer122 = Answer.create(description:"Pen & Paper", correct:false, question:question33)
answer123 = Answer.create(description:"Adobe XD", correct:false, question:question33)
answer124 = Answer.create(description:"Figma", correct:false, question:question33)
answer125 = Answer.create(description:"Stand-up", correct:false, question:question35)
answer126 = Answer.create(description:"Grooming", correct:false, question:question35)
answer127 = Answer.create(description:"Sprint planning", correct:false, question:question35)
answer128 = Answer.create(description:"Sprint rehearsal", correct:true, question:question35)
answer129 = Answer.create(description:"daily team-sync", correct:true, question:question36)
answer130 = Answer.create(description:"warm-up", correct:false, question:question36)
answer131 = Answer.create(description:"client meeting", correct:false, question:question36)
answer132 = Answer.create(description:"Squad", correct:false, question:question37)
answer133 = Answer.create(description:"Guild", correct:false, question:question37)
answer134 = Answer.create(description:"Tactical team", correct:true, question:question37)

puts "#{Answer.count} answers created"

test1 = Test.new(name: "Product Owner - DATA Junior", date: Date.today, jobtype: "Product Owner", company_name: "BlaBlaCar", user: user2)
test2 = Test.new(name: "Senior Product Manager", date: Date.today, jobtype: "Senior Product Manager", company_name: "BlaBlaCar", user: user2)
test3 = Test.new(name: "Product Manager - Bidding Strategy", date: Date.today, jobtype: "Product Manager", company_name: "BlaBlaCar", user: user2)
test4 = Test.new(name: "Enterprise Product Manager", date: Date.today, jobtype: "Product Manager", company_name: "BlaBlaCar", user: user2)

test1.tag_list.add("product", "maths", "technical", "mobile", "agile", "software")
test1.save
test2.tag_list.add("mobile", "maths", "technical", "mobile", "agile", "software")
test2.save
test3.tag_list.add("product", "maths", "technical", "mobile", "agile", "software")
test3.save
test4.tag_list.add("mobile", "maths", "technical", "mobile", "agile", "software")
test4.save

puts "#{Test.count} tests created"

candidates = User.where(role: "Candidate")

  Test.all.each do |test|
    candidates.sample(10).each do |u|
      test.test_questions.each do |tq|
        user_answer = tq.question.answers.sample
        Input.create(user: u, test_question: tq, answer: user_answer)
        puts "New input created"
      end
    end
  end

puts "#{Input.count} inputs created"
