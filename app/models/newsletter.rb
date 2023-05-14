require 'net/http'
require 'net/https'

class Newsletter < ApplicationRecord
  validates :email, uniqueness: { message: :email_unique }
  validates :email, presence: { message: :email_presence }
  validates :fashion_interest, presence: { message: :fashion_interest }
  validate :email_abstract_api

  FASHION_INTEREST = [I18n.translate(:women_fashion), I18n.translate(:men_fashion), I18n.translate(:children_fashion)]

  def email_abstract_api
    uri = URI("https://emailvalidation.abstractapi.com/v1/?api_key=c073c7d0d4f44b48aa0fc6eb94d11ce1&email=#{self.email}")

    http = Net::HTTP.new(uri.host, uri.port)
    http.use_ssl = true
    http.verify_mode = OpenSSL::SSL::VERIFY_PEER
    request =  Net::HTTP::Get.new(uri)
    response = http.request(request)
    if response.body.gsub(/[^0-9]/, '').to_i < 70
        self.errors.add(:email, :email_api)
    end
  end
end
