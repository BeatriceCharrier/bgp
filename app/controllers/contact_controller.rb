class ContactController < ApplicationController
    def index
      def create
        @user = User.new(params[:user])
        if @user.save
          redirect_to @user
        else
        end
      end
    end
end
  