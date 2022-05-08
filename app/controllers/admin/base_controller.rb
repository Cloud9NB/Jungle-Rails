module Admin
  class BaseController < ApplicationController

    def http_basic_authenticate
      authenticate_or_request_with_http_basic do |name, password|
        name == ENV["HTTP_BASIC_AUTH_USER"] && password == ENV["HTTP_BASIC_AUTH_PASS"]
      end
    end
    
  end
end