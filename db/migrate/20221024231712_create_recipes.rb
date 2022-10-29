class CreateRecipes < ActiveRecord::Migration[6.1]
  def change
    create_table :recipes do |t|
      t.string  :title
      t.integer :serving_size
      t.integer :cook_time
      t.integer :prep_time
      t.string  :method
      t.string  :ingredients


      t.timestamps
    end
  end
end
