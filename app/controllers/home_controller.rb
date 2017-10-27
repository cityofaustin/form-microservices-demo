class HomeController < ApplicationController
  def index
  end
  
  def github_form
    render_environments
  end
  
  def email_form
    render_environments
  end
  
  private
    def render_environments
      if Rails.env.development?
        @destination_url = "http://localhost:3000"
        @destination_name = "localhost"
      elsif Rails.env.production?
        @destination_url = "https://coa-test-form-api.herokuapp.com"
        @destination_name = "heroku"
      end
    end

end
