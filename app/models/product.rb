class Product < ActiveRecord::Base
  belongs_to :manufacturer
  belongs_to :category
  attr_accessible :description, :name, :photo, :size, :type, :price
  attr_accessible :manufacturer_id, :category_id, :line_id
  has_attached_file :photo, :styles => { :thumb=> "100x100#", :small  => "400x400>" }
  has_many :line_items
end
