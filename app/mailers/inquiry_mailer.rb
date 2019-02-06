class InquiryMailer < ApplicationMailer
  default from: "from.furushima0505@gmail.com"   # 送信元アドレス
  default to: "from.furushima0505@gmail.com"     # 送信先アドレス

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.inquiry_mailer.received_email.subject
  #
  def received_email(inquiry)
    @inquiry = inquiry

    mail to: "from.furushima0505@gmail.com" , subject: '問い合わせ'
  end
end