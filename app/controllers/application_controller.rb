class ApplicationController < ActionController::Base
    before_action :authenticate_user!
    protect_from_forgery prepend: true
    
    set_current_tenant_through_filter
    before_action :find_current_tenant
  
    def find_current_tenant
      unless current_user.nil?
        set_current_tenant(current_user.accounts_id)
      end
    end
  end
