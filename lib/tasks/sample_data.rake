namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do
    100.times do |n|
      name  = Faker::Name.name
      email = "example-#{n+1}@railstutorial.jp"
      password  = "password"
      User.create!(name: name,
                   email: email,
                   image: 'ic_auto_repeat_enabled (1).svg',
                   password: password,
                   password_confirmation: password)
    end
  end
end