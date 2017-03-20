class Factory < ActiveRecord::Base
  belongs_to :model
  has_many :products
end
