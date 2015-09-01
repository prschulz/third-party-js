class UsersController < ApplicationController
  def index
  end

  def show
    user = User.find(params[:id])
    if user.blank?
      render "templates/widgets/profile", locals: { user: user }, layout: "application"
    else
      render "templates/widgets/profile-404", layout: "application"
    end
  end
end
