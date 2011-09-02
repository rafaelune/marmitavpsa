desc "This task is called by the Heroku cron add-on"

task :cron => :environment do

  if Time.now.hour == 14 # run at 2 pm
    Marmita.destroy_all
  end
  
end