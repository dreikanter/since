require 'rails_helper'
require 'spec_helper'

RSpec.describe UsersController, :type => :controller do
  describe "GET #index" do
    it "returns 200 status code" do
      get :index, format: :json
      expect(response.status).to eq(200)
    end
  end

  it "returns 200 status code" do
    get :show, id: 1, format: :json
    expect(response.status).to eq(200)
  end
end
