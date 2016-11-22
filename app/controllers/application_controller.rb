class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def saucisse
    render html:"Paupiette magique"
  end
end
