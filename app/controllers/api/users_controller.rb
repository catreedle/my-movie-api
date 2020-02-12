class Api::UsersController < ApplicationController
  before_action :authenticate_user, only: [:update, :destroy, :admin]
  before_action :set_user, only: [:show, :update, :destroy]
   # GET /api/users
  def index
    @users = User.all

    render json: @users
  end

  # GET /api/users/1
  def show
    render json: @user
  end

  # POST /api/users
  def create
    @user = User.new(user_params)

    if @user.save
      render json: @user, status: :created
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /api/users/1
  def update
    if @user = current_user
      if @user.update(user_params)
        render json: @user, status: :ok
      else
        render json: @user.errors, status: :unprocessable_entity
      end
    else
      render json: @user.errors, status: :unauthorized
    end
  end

  # DELETE /api/users/1
  def destroy
    if @user = current_user
      @user.destroy
    else
      render json: @user.errors, status: :unauthorized
    end
  end

  def admin
    value = current_user && current_user.admin == true
    render :json => value.to_json
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def user_params
      params.permit(:email, :password)
    end
end
