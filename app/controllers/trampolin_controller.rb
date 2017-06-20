class TrampolinController < ApplicationController
  def redirect
    redirect_to user_github_omniauth_callback_url(host: params[:target], code: params[:code], state: params[:state])
  end
end
