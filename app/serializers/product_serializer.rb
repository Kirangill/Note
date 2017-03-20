class ProductSerializer < ActiveModel::Serializer
  attributes :id, :name, :content, :subdomain
end
