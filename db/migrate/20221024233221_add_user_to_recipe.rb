class AddUserToRecipe < ActiveRecord::Migration[6.1]
  def change
    add_reference :recipes, :user
  end
end
