class ApplicationController < ActionController::Base
    include ApplicationsHelper
    include SessionsHelper

    def index
        redirect_to "/applications"
    end
end
