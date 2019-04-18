class UsersController < ApplicationController

    def index
      @users = User.all.order(created_at: :desc)
    end

    def show
    end

    def create
      @user = User.new(user_params)

    if @user.save
      redirect_to :root, notice: 'User created!'
    else
      render :index
      end
    end

    def new
    end

      def user_params
    params.require(:user).permit(
      :name,
      :email,
      :password_digest
    )
    end


end