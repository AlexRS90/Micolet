require 'rails_helper'

RSpec.describe "Newsletters", type: :request do
  describe "Let's visit the new path" do
    get newsletter_new_path
    expect(response.body).to include 'Suscribe to recive our newsletter.'
    expect(response).to have_http_status(200)
  end
end
