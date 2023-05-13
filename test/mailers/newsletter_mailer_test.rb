require "test_helper"

class NewsletterMailerTest < ActionMailer::TestCase
  test "newsletter_created" do
    mail = NewsletterMailer.newsletter_created
    assert_equal "Newsletter created", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
