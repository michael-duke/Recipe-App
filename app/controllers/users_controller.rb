class UsersController < ApplicationController
  before_action :set_user, only: [:show]

  def index
    @users = User.all.order(:id)
  end

  def show
    @user = User.find(params[:id])
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_user
    @user = User.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def user_params
    params.require(:user).permit(:name)
  end
end
