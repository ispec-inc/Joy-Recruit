namespace :faker do
  desc "make dummy data"
  task create_dummy: :environment do
    10.times do
      Company.create!(
        name: Faker::Company.name,
        description: Faker::Company.catch_phrase,
        address: Faker::Address.full_address,
        website_url: Faker::Internet.url,
      )
      print "."
    end
    puts "10 companies created"

    Company.all.each do |company|
      20.times do
        company.users.create!(
          name: Faker::Name.name,
          age: [*1..100].sample,
        )
        print "."
      end
    end
    puts "20 users created for each companies"

    User.all.each do |user|
      30.times do
        user.articles.create!(
          title: Faker::App.name,
          content: Faker::JapaneseMedia::OnePiece.quote,
          is_draft: Faker::Boolean.boolean(true_ratio: 0.3),
        )
        print "."
      end
    end
    puts "30 atricles created for each users"

  end
end
