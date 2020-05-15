class ApplicationsController < ApplicationController
    def show
        @user = current_user
        @applications = @user.applications
    end
end
