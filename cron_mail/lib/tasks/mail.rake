namespace :mail do
  desc 'Run tests'
  task sample: :environment do
    DailyMailer.send_mail.deliver_now
  end
end