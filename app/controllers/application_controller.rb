class ApplicationController < ActionController::Base
    include SessionsHelper

    def index
        redirect_to "/login"
    end
end
