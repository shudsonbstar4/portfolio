class Project < ActiveRecord::Base
  attr_accessible :photo, :category_id, :description, :image_path, :subcategory_id, :title
	has_attached_file :photo, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
end
