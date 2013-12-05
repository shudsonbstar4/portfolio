class Project < ActiveRecord::Base
  attr_accessible :photo, :category_id, :description, :image_path, :subcategory_id, :title, :featured
	has_attached_file :photo, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
	
	validates_inclusion_of :featured, :in => [true, false]
	
end
