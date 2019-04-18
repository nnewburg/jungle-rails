class UsersController < ApplicationController

    def index
      @users = User.all.order(created_at: :desc)
    end

    def show
    end

    def create
      @user = User.new(user_params)
      puts @user.id;
    if @user.save
      session[:user_id] = @user.id
        redirect_to '/'
      else
      redirect_to '/signup'
      end
    end

    def new
    end

      def user_params
    params.require(:user).permit(
      :name,
      :email,
      :password
    )
    end


end