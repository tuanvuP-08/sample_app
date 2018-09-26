class UserMailer < ApplicationMailer
  def account_activation user
    @user = user
    mail to: user.email, subject: t("email_active_subject")
  end

  def password_reset user
    @user = user
    mail to: user.email, subject: t("password_reset_subject")
  end
end
