class BoxlunchesController < ApplicationController
  def index
    @boxlunches = Boxlunch.all
  end

  def show
  end
end
