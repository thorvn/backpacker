# encoding: utf-8
module Requests
  module LoginHelpers
    def login_user
      user = FactoryGirl.create(:user)
      login_as user
    end
  end
end

RSpec.configure do |config|
  config.include Requests::LoginHelpers, type: :request
end
