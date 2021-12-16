require 'rails_helper'

RSpec.describe "Transferencias", type: :request do
    describe "index" do
        it "should return a succesful request" do
            get "/transferencias/index"
            expect(response).to have_http_status(:ok)
        end

        it "should render index" do
            get "/transferencias/index"
            expect(response).to render_template(:index)
        end
    end
end