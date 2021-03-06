
def randomname
  num = rand(0..2)
  if num == 0
   Faker::Pokemon.name
 elsif num == 1
   Faker::Hipster.word.capitalize + ' ' + Faker::Hipster.word.capitalize
 elsif num == 2
   "user#{(1000..3000)}"
 end
end

ottersname = ['Kane','Kevin','JJ','Nick','John','Tony' 'Raji']

50.times do
  User.create(
  name: ottersname.sample,
  username: randomname,
  email: Faker::Internet.email,
  password: "PASSword99!",
  title: Faker::Name.title,
  address: Faker::GameOfThrones.city,
  bio: Faker::Hipster.paragraph(2, true, 4))
end

20.times do
  Question.create(
  title: Faker::Hipster.sentence(3, false, 4),
  content: Faker::Hipster.paragraph(10, false, 10),
  user_id: rand(1..User.all.count)
  )
end

def answer_smart
  answer = ''
  answer += Faker::Hacker.say_something_smart + ''
  answer += Faker::Hacker.say_something_smart + ''
  answer += Faker::Hacker.say_something_smart + ''
  answer += Faker::Hacker.say_something_smart + ''
  answer += Faker::Hacker.say_something_smart + ''
  answer += Faker::Hacker.say_something_smart + ''
  answer += Faker::Hacker.say_something_smart + ''
  answer += Faker::Hacker.say_something_smart + ''
  answer += Faker::Hacker.say_something_smart + ''
  answer += Faker::Hacker.say_something_smart + ''
  answer += Faker::Hacker.say_something_smart + ''
  answer += Faker::Hacker.say_something_smart + ''
  answer += Faker::Hacker.say_something_smart + ''
  return "#{answer}"
end

30.times do
  Answer.create(
  content: answer_smart,
  user_id: rand(1..User.all.count),
  question_id: rand(1..20)
  )
end

100.times do
  question = Question.find(rand(1..20))
  question.votes.create(
  votable_id: question.id,
  votable_type: question,
  user_id: rand(1..User.all.count)
  )
end

30.times do
  question = Question.find(rand(1..20))
  question.comments.create(
  commentable_id: question.id,
  commentable_type: question,
  user_id: rand(1..User.all.count),
  content: Faker::Hipster.sentence(3, false, 4)
  )
end
