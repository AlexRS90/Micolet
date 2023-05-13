require 'net/http'
require 'net/https'

class Newsletter < ApplicationRecord
  validates :email, uniqueness: { message: 'Sorry, this mail is already in our database.' }
  validates :email, presence: { message: 'Please add your email.' }
  validates :fashion_interest, presence: { message: 'Please select at least one fashion option.' }
  validate :email_abstract_api

  FASHION_INTEREST = ["Women's Fashion", "Men's Fashion", "Children's Fashion"]

  def email_abstract_api
    uri = URI("https://emailvalidation.abstractapi.com/v1/?api_key=c073c7d0d4f44b48aa0fc6eb94d11ce1&email=#{self.email}")

    http = Net::HTTP.new(uri.host, uri.port)
    http.use_ssl = true
    http.verify_mode = OpenSSL::SSL::VERIFY_PEER
    request =  Net::HTTP::Get.new(uri)
    response = http.request(request)
    if response.body.gsub(/[^0-9]/, '').to_i < 70
        self.errors.add(:email, 'Sorry, this is an invalid email, try a new one.')
    end
  end
end
