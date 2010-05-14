namespace :db do
  task :seed => :environment do
    load File.join(Rails.root, 'db', 'seed.rb')
  end
end
