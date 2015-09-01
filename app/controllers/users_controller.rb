class UsersController < ApplicationController
  def index
  end

  def show
    user = User.find(params[:id])
    render partial: "templates/widgets/profile", locals: { user: user }
  end
end
