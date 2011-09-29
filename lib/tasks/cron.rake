desc "This task is called by the Heroku cron add-on"

task :cron => :environment do

  if Time.now.hour >= 13
    Marmita.destroy_all
  end
  
end