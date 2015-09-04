class UsersController < ApplicationController



  def index
  end

  def show
  end

  def widget
    user = User.find_by_guid(params[:id])
    if user.blank?
      render "templates/widgets/profile-404", layout: "widget"
    else
      render "templates/widgets/profile", locals: { user: user }, layout: "widget"
    end
  end
end
