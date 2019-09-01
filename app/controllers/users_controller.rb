class UsersController < ApplicationController
    skip_before_action :authenticate_user, only: [:new, :create]
  
    def show
      @user = User.find_by(id: params['id'])
    end
  
    def new
      @user = User.new
    end
  
    def create
      user_params = params.require(:user).permit(
        :first_name,
        :last_name,
        :description,
        :email,
        :age,
        :city,
        city_attributes: [:id, :city_name, :zip_code]
        #:password,
       # :password_confirmation,
      )
      @user = User.new(user_params)
      if @user.save
        flash[:success] = "Vous êtes bien enregistré !"
        log_in(@user)
        redirect_to gossips_path
      else
        render :new
      end
    end
  end
  