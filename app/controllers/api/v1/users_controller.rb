class Api::V1::UsersController < ApplicationController

    def index
        users = User.all
        render json: users.to_json
    end

    def create
        @user = User.create(user_params)
        if @user.valid?
            render json: {user:
        UserSerializer.new(@user) }, status: :created
        else
            render json: { error: 'Failed to create user' }, status: :not_acceptable
        end
    end

    private
    def user_params
        params.permit(:name, :password)
    end
end
