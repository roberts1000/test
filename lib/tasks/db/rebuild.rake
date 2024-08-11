namespace :db do
    desc "rake "
    task :rebuild do
      cmd = "bundle exec rake db:drop db:create db:migrate db:seed"
      cmd = "RAILS_ENV=#{ENV['RAILS_ENV']} #{cmd}" unless ENV["RAILS_ENV"].nil?
      puts cmd
      system cmd
    end
  end
