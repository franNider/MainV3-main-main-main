class ApplicationController < ActionController::Base
    helper_method :current_user
    helper_method :user_authenticated?

    
    def user_authenticated?
        !current_user.nil?
    end

    def current_user
        User.find session[:user_id] if session[:user_id]
    end

    before_action :set_current_user
    before_action :protect_pages

    private

    def set_current_user
        Current.user = User.find_by(id: session[:user_id]) 
    end

    def protect_pages
        redirect_to "/" unless Current.user
    end
end
