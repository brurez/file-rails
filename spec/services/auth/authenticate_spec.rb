require 'rails_helper'

RSpec.describe Auth::Authenticate do
    describe "when user exists" do
        before do
            @existing_user = create(:user, password: "test")
            @result = Auth::Authenticate.build.run(username: @existing_user.username, password: @existing_user.password)
        end

        it "returns success equal true" do
            expect(@result[:success]).to eq(true)
        end
        
        it "returns user" do
            expect(@result[:user]).to eq(@existing_user)
        end
    end
    
    describe "when user does NOT exists" do
        before do
            @existing_user = create(:user, password: "test")
            @result = Auth::Authenticate.build.run(username: @existing_user.username, password: "invalidPassword")
        end

        it "returns success equal false" do
            expect(@result[:success]).to eq(false)
        end
        
        it "returns user" do
            expect(@result[:user]).to eq(nil)
        end
    end
end    