class RecipeSerializer < ActiveModel::Serializer
  attributes :id, :title, :instructions
end
