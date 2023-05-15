require 'rails_helper'

RSpec.describe Newsletter, type: :model do
  it 'email and fashion interest must be present' do
    newsletter = Newsletter.new(email: 'alex@gmail.com', fashion_interest: ["Men's Fashion"])
    expect(newsletter).to be_valid
  end

  it "email can't be nil" do
    newsletter = Newsletter.new(email: nil)
    expect(newsletter).to_not be_valid
  end

  it "Fashion interest can't be blank" do
    newsletter = Newsletter.new(fashion_interest: [])
    expect(newsletter).to_not be_valid
  end

  it 'Email must be unique' do
    Newsletter.create!(email: 'alex@gmail.com', fashion_interest: ["Men's Fashion"])
    newsletter2 = Newsletter.new(email: 'alex@gmail.com', fashion_interest: ["Men's Fashion"])
    expect(newsletter2).to_not be_valid
  end
end
