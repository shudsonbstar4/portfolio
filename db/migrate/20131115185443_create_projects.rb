class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.integer :subcategory_id
      t.integer :category_id
      t.string :title
      t.string :image_path
      t.text :description

      t.timestamps
    end
  end
end
