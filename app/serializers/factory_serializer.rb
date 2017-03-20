class FactorySerializer < ActiveModel::Serializer
  attributes :id, :name, :location
   has_many :products
   
end
