# encoding: utf-8
class HomeController < ApplicationController
  before_action :authenticate_user!
  layout "home"
  def index
  end
end
