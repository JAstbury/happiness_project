class UserMailer < ApplicationMailer
  default from: 'notifications@example.com'

  def email_daily(user)
    @user = user
    mail(to: @user.email, subject: 'The Happiness Project: Useful Resources')
  end

  def email_weekly(user)
    @user = user
    mail(to: @user.email, subject: 'The Happiness Project: End of Week Summary')
  end

  def self.email_all_users_daily(users)
    users.each do |user|
      email_daily(user).deliver
    end
  end

  def self.email_all_users_weekly(users)
    users.each do |user|
      email_weekly(user).deliver
    end
  end

end
