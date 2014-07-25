require 'pp'
class UsersController < ApplicationController
  respond_to :json

  def index
    respond_with User.all
  end

  def show
    respond_with User.where(id: params[:id]).first
  end
end
