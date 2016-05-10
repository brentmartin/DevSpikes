# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


planned_questions_one = [
  "How well does person set realistic goals on projects?",
  "Does person execute on items within set timeframes?",
  "How funny is person?",
  "Do people enjoy being around person?",
  "Does person express their points clearly when explaining things?",
  "Do the emails you have received from person communicate points accurately?",
  "If person took an IQ test, what do you think they would score?",
  "How intelligent do you think person is?",
  "How often does person collaborate with others to get tasks done?",
  "How often does person ask for feedback on projects?",
  "How willing is person to re-evaluate work they've done based on feedback?",
  "How well does person recognize the skills of those whom they work with?",
  "How well does person receive and learn from feedback given by bosses and peers?",
  "How often does person turn to people in different industries for professional advice?",
  "On average, how often do you feel like person felt qualified to speak about subjects related to them?",
  "How often does said person identify and solve a problem?"
]

Assessment.create(title: "DKE/IS Litmus Test",
          description: "This test is a double blind, anonymous test in which I explain how it is both below.

          In answering these questions, I would like you to be as brutally honest as possible. The more honesty, the more constructive feedback.

          What this is testing?
          This is testing the balance between Imposter Syndrome and the Dunnin-Kruger effect. If you are aware of these concepts then awesome! If you aren't then please spend 30 seconds reading on each

          Why I am doing this?
          Many believe that the best way to evaluate where you are in this balance is to turn to trusted peers for feedback. But there is a lack of resources to easily do that. Eventually, I would like to turn this process into something that people can easily do online. I would also like the feedback for myself too :)

          How is this double blind?
          I will be taking this assessment on myself. And you will be taking this assessment on me. Neither of us will take this assessment with any knowledge of the others answers.

          How do the participants stay anonymous and why?
          The why is easy - I want the feedback to be as pure and unbiased as possible. The only way for me to do so is to never see individual results, rather to see averages. In

          If you have any feedback on the questions choosen PLEASE leave them in the comment box below. This is only my first pass at sample questions, many iterations and revisions will need to be done before this is viable.",
          id: 1
  )

planned_questions_one.each do |q|
  Question.create(text: q, assessment_id: 1)
end

#### ####










#### random seed data #####

######## NOTE: User seeds #########

5.times do
  10.times do
    registered_user = User.create(name:Faker::Name.name, location:Faker::Address.city + ", " + Faker::Address.state_abbr, email:Faker::Internet.domain_word + "@example.com", password: "password",  registration:true)
  end
  # 20.times do
  #   unregistered_email = User.create(email:Faker::Internet.domain_word + "@example.com")
  # end
  # 10.times do
  #   unregistered_name_email = User.create(name:Faker::Name.name, email:Faker::Internet.domain_word + "@example.com")
  # end
end

######## NOTE: Assessment seeds #########
4.times do |n|
  Assessment.create(title:Faker::Name.title, description:Faker::Company.catch_phrase)
end

######## NOTE: Questions seed #########
Assessment.all.each do |id|
  15.times do |id|
    Question.create(text:Faker::Company.bs + "?", assessment_id: id)
  end
end

######## NOTE: Surveys / Evaluations seeds #########
User.count.times do
  @survey = Survey.new(message: Faker::Hipster.paragraph(rand(2..5)), user_id: rand(1..User.count), assessment_id: rand(1..Assessment.count))
  @survey.save
  if @survey.save
    @survey.assessment.questions.each do |question|
      Evaluation.create(survey_id: @survey.id, question_id: question.id, completion:false)
    end
  end
end

######## NOTE: Evaluations seeds #########


######## NOTE: Responses seeds #########


######## NOTE: Participants seeds #########
