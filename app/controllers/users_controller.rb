class UsersController < ApplicationController

  def index
    @users = User.all.order(id: 'DESC')
  end

  def new
    @users = UserCollection.new
  end

  def create
    @users = UserCollection.new(users_params)
    if @users.save
      redirect_to users_url
    else
      render :new
    end
  end

  private

    def users_params
      params.require(:users)
    end
end
