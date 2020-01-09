class Address < ApplicationRecord
  belongs_to :user, optional: true
  has_many :orders

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :prefecture
  
end
