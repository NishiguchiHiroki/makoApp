class Cart < ApplicationRecord
  belongs_to :order
  belongs_to :menu
  
end
