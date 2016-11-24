class UsersController < ApplicationController
    before_action :authenticate_user!
    load_and_authorize_resource

    def index
        @users = User.all
    end

    def new
        @user = User.new
    end

    def create
        @user = User.new(user_params)
        if @user.save
            redirect_to users_path, notice: 'User is successfully Creeated'
        else
            render action: 'new'
        end
    end

    def show
        @user = User.find(params[:id])
    end

    def edit
        @user = User.find(params[:id])
    end

    def destroy
        @user = User.find(params[:id])
        @user.destroy
        redirect_to users_path, notice: "Successfully deleted #{user.email}"
end

    private

    def user_params
        params[:user].permit(:email, :password, :college_id, role_ids: [])
      end
end
