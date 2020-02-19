namespace :seed_fu_gen do
  desc 'generate seed-fu file for line.'
  task :line => :environment do |t|

    SeedFu::Writer.write('./db/fixtures/company.rb', class_name: 'Company') do |w|
      Company.all.each do |x|
        w << x.as_json(except: [:created_at, :updated_at])
      end
    end

    SeedFu::Writer.write('./db/fixtures/user.rb', class_name: 'User') do |w|
      User.all.each do |x|
        w << x.as_json(except: [:created_at, :updated_at])
      end
    end

    SeedFu::Writer.write('./db/fixtures/article.rb', class_name: 'Article') do |w|
      Article.all.each do |x|
        w << x.as_json(except: [:created_at, :updated_at])
      end
    end
  end
end
