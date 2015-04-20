class Users::ManageController < ApplicationController
  layout 'home'

  def list
    @users = User.all.order("id DESC").paginate(per_page: 10, page: params[:page])
  end

end
