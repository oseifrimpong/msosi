require 'rails_helper'

RSpec.describe PagesController, type: :controller do

  describe "GET #career" do
    it "returns http success" do
      get :career
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #help" do
    it "returns http success" do
      get :help
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #developer" do
    it "returns http success" do
      get :developer
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #aboutus" do
    it "returns http success" do
      get :aboutus
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #terms" do
    it "returns http success" do
      get :terms
      expect(response).to have_http_status(:success)
    end
  end

end
