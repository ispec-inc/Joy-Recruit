namespace :faker do
  desc "make dummy data"
  task create_dummy: :environment do
    3.times do
      Company.create!(
        name: Faker::Company.name,
        description: Faker::Company.catch_phrase,
        address: Faker::Address.full_address,
        website_url: Faker::Internet.url,
      )
      print "."
    end
    puts "Companies Created"

    Company.all.each do |company|
      100.times do
        company.users.create!(
          name: Faker::Name.name,
          age: [*1..100].sample,
        )
      end
      print "."
    end
    puts "Users are created"

    User.all.each do |user|
      10.times do
        user.articles.create!(
          title: Faker::App.name,
          content: Faker::JapaneseMedia::OnePiece.quote,
          is_draft: Faker::Boolean.boolean(true_ratio: 0.3),
        )
      end
      print "."
    end
    puts "Atricles are created"

  end
end
