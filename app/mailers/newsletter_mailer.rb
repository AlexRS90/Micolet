class NewsletterMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.newsletter_mailer.newsletter_created.subject
  #
  def newsletter_created
    @mail = Newsletter.last.email
    @fashion_interest = Newsletter.last.fashion_interest
    mail to: @mail, subject: I18n.translate('mailer.subject')
  end
end
