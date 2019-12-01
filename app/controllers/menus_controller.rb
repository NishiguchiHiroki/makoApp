class MenusController < ApplicationController
  def index
    @menus = Boxlunch.all
  end

  def show
  end
end
