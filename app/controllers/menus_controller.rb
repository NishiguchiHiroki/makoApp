class MenusController < ApplicationController
  def index
    @menus = Boxlunch.all
  end
end
