class UserMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.bought.subject
  #
  def bought(user)
    # @greeting = "Congrats! One of your items has just been sold on BuyBuyBaby. Check it out: https://buybuybaby.herokuapp.com/ "
    @user = user
    mail(to: @user.email, subject: "Items sold on BuyBuyBaby")
  end
end
