# desc "Explaining what the task does"
# task :fake_student do
#   # Task goes here
# end
namespace :fake_student do
  desc "Seed dummy students"
  task load: :environment do
    Fake::Student.destroy_all

    200.times do
      Fake::Student.create!(
        race:   Fake::Student::RACE.sample,
        gender: Fake::Student::GENDER.sample,
        year:   Fake::Student::YEAR.sample,
        school: Fake::Student::SCHOOL.sample,
        name:   Faker::Name.name,
        email:  Faker::Internet.email
      )
    end
    p 'Create dummy students successfully'
  end
end