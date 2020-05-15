class ApplicationController < ActionController::Base
    include ApplicationsHelper
    include SessionsHelper

    def index
        redirect_to "/login"
    end
end
