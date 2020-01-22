class Cart < ApplicationRecord
  belongs_to :order
  belongs_to :menu
  
  def prepare_order
    order || create_order
  end
end
