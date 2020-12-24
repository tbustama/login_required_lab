class SecretsController < ApplicationController
    before_action :logged_in
    def show
    end

    def logged_in 
        if !session[:name]
            redirect_to new_session_path
        end
    end
end
