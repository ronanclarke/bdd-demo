class ApplicationController < ActionController::Base

  helper :all

  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception



  # environment checkers
  def production?
    Rails.env == "production"
  end

  def development?
    Rails.env == "development"
  end

  def test?
    Rails.env == "test"
  end
  def staging?
    Rails.env == "staging"
  end

  private

  def integration_test?
    Rails.env.test? && Capybara.current_driver == :rack_test
  end

  def observable_redirect_to(url)

    if integration_test?
      render :text => "If this wasn't an integration test, you'd be redirected to: #{url}"
    else
      redirect_to url
    end
  end


end
