class User < ActiveRecord::Base
  # user status values
  CUSTOMER = 0
  PREMIERE = 1
  ACCOUNT_MANAGER = 2
  
  attr_accessible :email, :password, :password_confirmation, :firstname, :lastname, :phone, :account_manager_id, :salon_id, :status
  has_secure_password
  validates_presence_of :password, :on => :create
  validates_presence_of :email
  validates_uniqueness_of :email
  belongs_to :salon
  belongs_to :account_manager, :class_name => "User", :foreign_key => "account_manager_id"
  has_many :orders
  
  def statusName
    case self.status.to_i
    when CUSTOMER
      return "Customer"
    when PREMIERE
      return "Premiere"
    when ACCOUNT_MANAGER
      return "Account Manager"
    else
      return "Unknown"
    end
  end
  
  def cart
    self.orders.first_or_create(:submitted => 0, :account_manager_id => self.account_manager_id)
  end
  
  def fullname
    "#{self.lastname}, #{self.firstname}"
  end
end
