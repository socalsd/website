class Product < ActiveRecord::Base
  belongs_to :manufacturer
  belongs_to :category
  belongs_to :line
  attr_accessible :description, :name, :photo, :size, :type, :price, :onsale, :product_page_tag, :old_price
  attr_accessible :manufacturer_id, :category_id, :line_id
  has_attached_file :photo, :styles => { :thumb => "100x100>", :medium => "400x400#" }, :default_url => "/assets/no_image_icon.gif"
  has_many :line_items
  
  def splash_tag
    return (product_page_tag && !product_page_tag.empty? && product_page_tag) || (onsale && "Sale!");
  end
end
