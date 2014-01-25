module RootHelper

  def require_current_user_for_root!
    redirect_to new_user_url if current_user.nil?
  end

end
