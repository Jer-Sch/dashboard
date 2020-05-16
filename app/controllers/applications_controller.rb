class ApplicationsController < ApplicationController
    def index
        user = current_user
        @applications = user.applications
        @application = Application.new
    end

    def create
        user = current_user
        app = Application.find_by(id: params[:application][:id])
        user.applications << app
        redirect_to "/applications"
    end
end
