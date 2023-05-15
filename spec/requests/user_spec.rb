require 'rails_helper'

RSpec.describe "Users", type: :request do
  it "GET /index" do
    get '/user/index'
    expect(response.body).to include 'Would you like to get a 20% off code for your first purchase?'
    expect(response).to have_http_status(200)
  end
end
