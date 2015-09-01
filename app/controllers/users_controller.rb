class UsersController < ApplicationController
  def index
  end

  def show
    user = User.find(params[:id])
    render "templates/widgets/profile", locals: { user: user }, layout: "application"
  end
end
