require 'rails_helper'

RSpec.describe "Designs", type: :request do
  describe "GET /designs" do
    it "works! (now write some real specs)" do
      get designs_path
      expect(response).to have_http_status(200)
    end
  end
end
