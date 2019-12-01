class SingleMenusController < ApplicationController
  def index
    @single_menus = Single_menu.all
  end
end
