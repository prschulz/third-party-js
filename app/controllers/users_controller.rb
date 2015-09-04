class UsersController < ApplicationController

  

  def index
  end

  def show
  end

  def widget
    user = User.find_by_guid(params[:id])
    if user.blank?
      render "templates/widgets/profile-404", layout: "application"
    else
      render "templates/widgets/profile", locals: { user: user }, layout: "application"
    end
  end
end
