# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#users
u1 = User.create(username: 'Allan')
u2 = User.create(username: 'Bob')
u3 = User.create(username: 'Carl')
u4 = User.create(username: 'Daniel')
u5 = User.create(username: 'Ethan')

p1 = Poll.create(title: 'City', author_id: u2.id)
p2 = Poll.create(title: 'Animal', author_id: u3.id)
p3 = Poll.create(title: 'Food', author_id: u4.id)

q1 = Question.create(poll_id: p1.id, text: 'What''s your favorite city?')
q2 = Question.create(poll_id: p1.id, text: 'What is the size of your city?')
q3 = Question.create(poll_id: p2.id, text: 'What is your spirit animal?')
q4 = Question.create(poll_id: p2.id, text: 'What animal do you own?')
q5 = Question.create(poll_id: p3.id, text: 'What is your favorite type of food?')
q6 = Question.create(poll_id: p3.id, text: 'What is your favorite dessert?')

a1 = AnswerChoice.create(question_id: q1.id, text: 'San Francisco')
a2 = AnswerChoice.create(question_id: q1.id, text: 'San Diego')
a3 = AnswerChoice.create(question_id: q2.id, text: 'Big')
a4 = AnswerChoice.create(question_id: q2.id, text: 'Small')
a5 = AnswerChoice.create(question_id: q3.id, text: 'Dolphin')
a6 = AnswerChoice.create(question_id: q3.id, text: 'Panda')
a7 = AnswerChoice.create(question_id: q4.id, text: 'Cat')
a8 = AnswerChoice.create(question_id: q4.id, text: 'Dog')
a9 = AnswerChoice.create(question_id: q5.id, text: 'Pizza')
a10 = AnswerChoice.create(question_id: q5.id, text: 'Chinese')
a11 = AnswerChoice.create(question_id: q6.id, text: 'Ice cream')
a12 = AnswerChoice.create(question_id: q6.id, text: 'Cake')

r1 = Response.create(answer_choice_id: a1.id, question_id: q1.id, user_id: u1.id)
r2 = Response.create(answer_choice_id: a3.id, question_id: q2.id, user_id: u1.id)
r3 = Response.create(answer_choice_id: a5.id, question_id: q3.id, user_id: u1.id)
r4 = Response.create(answer_choice_id: a7.id, question_id: q4.id, user_id: u1.id)
r5 = Response.create(answer_choice_id: a2.id, question_id: q1.id, user_id: u2.id)
r6 = Response.create(answer_choice_id: a4.id, question_id: q2.id, user_id: u2.id)
r7 = Response.create(answer_choice_id: a6.id, question_id: q3.id, user_id: u2.id)
r8 = Response.create(answer_choice_id: a8.id, question_id: q4.id, user_id: u2.id)
r9 = Response.create(answer_choice_id: a1.id, question_id: q1.id, user_id: u3.id)
r10 = Response.create(answer_choice_id: a3.id, question_id: q2.id, user_id: u3.id)
r11 = Response.create(answer_choice_id: a5.id, question_id: q3.id, user_id: u3.id)
r12 = Response.create(answer_choice_id: a7.id, question_id: q4.id, user_id: u3.id)




