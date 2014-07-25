namespace :db do
  desc "Rebuild database for TEST and DEVELOPMENT environments"
  task :rebuild, [] => :environment do
      # Development
      system("rake db:drop RAILS_ENV=development")
      system("rake db:create RAILS_ENV=development")
      system("rake db:migrate RAILS_ENV=development")
      system("rake db:seed RAILS_ENV=development")

      # Test
      system("rake db:drop RAILS_ENV=test")
      system("rake db:create RAILS_ENV=test")
      system("rake db:migrate RAILS_ENV=test")
      system("rake db:seed RAILS_ENV=test")
  end
end
