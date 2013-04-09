class Admin::UsersController < ApplicationController
  def index
    @users = User.order(:lastname, :firstname).page(params[:page] || 1)
    @breadcrumbs = [["Admin", admin_path], ["Users", nil]]
    @header_title = "All Users"
  end
end
