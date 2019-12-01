class SingleMenusController < ApplicationController
  def index
    @single_menus = SingleMenu.all
  end
end
