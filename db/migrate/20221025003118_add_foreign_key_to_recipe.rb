class AddForeignKeyToRecipe < ActiveRecord::Migration[6.1]
  def change
    add_foreign_key :recipes, :users
  end
end
