class Salon < ActiveRecord::Base
  attr_accessible :address, :city, :name, :phone, :state, :url, :zip
end
