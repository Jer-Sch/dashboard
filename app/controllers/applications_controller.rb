class ApplicationsController < ApplicationController
    def index
        user = current_user
        @applications = user.applications
        @application = Application.new
    end

    def create
        user = current_user
        params[:application][:id].each do |id|
            user.applications << Application.find_by(id: id) unless id == ""
        end
        redirect_to "/applications"
    end

    def destroy
        user = current_user
        app = Application.find_by(id: params[:id])
        user.applications.delete(app)
        redirect_to "/applications"
    end

    private

        def application_params
            params.require(:application).permit(:id, :name, :description, :color, :default_status, :link, application_ids: [])
        end
end
