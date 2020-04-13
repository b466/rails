class DailyMailer < ApplicationMailer
  def send_mail
    #@user = user
    mail(bcc: User.pluck(:email), subject:"ご連絡")
    #mail to: user.email, subject:"新規登録完了のご連絡"
  end
end
