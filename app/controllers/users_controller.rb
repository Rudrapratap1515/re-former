class UsersController < ApplicationController
    before_action :set_blog, only: %i[edit update]
    def new
        @user = User.new
    end

    def edit
    end

    def update
        if @user.update(user_params)
            redirect_to new_user_path
        else
            render :new
        end
    end
    
    def create
        #@user = User.new(name:params[:name],email:params[:email],passowrd:params[:passowrd])
        @user = User.new(user_params)

        if @user.save
            redirect_to new_user_path
        else 
            render :new
        end
    end

    private

    def set_blog
        @user = User.find(params[:id])
    end

    def user_params
      params.require(:user).permit(:name,:email,:passowrd)
    end
end
