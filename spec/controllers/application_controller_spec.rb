require 'spec_helper'

# Stub ApplicationController
# get :index to test
class TestController < ApplicationController
  def index
    render nothing: true
  end

  test_routes = Proc.new do
      get '/index' => 'test#index'
  end
  Rails.application.routes.eval_block(test_routes)
end

describe TestController do
  # Test the ApplicationController here.
  # Use `TestController` instead of `ApplicationController`
  describe "simple example" do
    it "should be successful" do
      get :index
      response.should be_successful
    end
  end
end
