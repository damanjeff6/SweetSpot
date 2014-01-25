class RootController < ApplicationController

  before_filter :require_current_user_for_root!, :only => [:root]

  def root
  end
end
