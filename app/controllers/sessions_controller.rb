class SessionsController < ApplicationController
    def new
        @user = User.new
    end

    def create
        @user = User.find_by(login: params[:session][:login])
        if @user && authenticate
            log_in(@user)
            redirect_to "/applications"
        else
            flash[:danger] = "Username or password is invalid."
            redirect_to "/login"
        end 
    end

    def destroy
        log_out
        redirect_to "/login"
    end

    private

      def authenticate
          @user.password == params[:session][:password]
      end
end
