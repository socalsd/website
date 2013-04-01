class Line < ActiveRecord::Base
  attr_accessible :description, :manufacturer_id, :name
  belongs_to :manufacturer
  has_many :products
end
