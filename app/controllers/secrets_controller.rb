class SecretsController < ApplicationController
  before_action :require_login

  def index
  end


  private

  def require_login
    return head(:forbidden) unless current_user
  end
end
