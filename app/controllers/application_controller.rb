class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include DeviseWhitelist

  before_action :authenticate_user!

  def default_url_options
    { locale: I18n.locale }
  end

end
