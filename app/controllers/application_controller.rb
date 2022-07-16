class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  before_action :set_current_user, if: :user_signed_in?
  include Pundit::Authorization
  include Turbo::Redirection

  # Pundit: white-list approach.
  after_action :verify_authorized, except: :index, unless: :skip_pundit?
  after_action :verify_policy_scoped, only: :index, unless: :skip_pundit?

  # Uncomment when you *really understand* Pundit!
  rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized
  def user_not_authorized
    flash[:alert] = "You are not authorized to perform this action."
    redirect_to(root_path)
  end
  
  helper_method :set_current_user

  private

  def skip_pundit?
    devise_controller? || params[:controller] =~ /(^(rails_)?admin)|(^pages$)/
  end

  def set_current_user
    Current.user = current_user if current_user
  end
end
