class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  
  #Bad hack.........................
  if Rails.env.development?
    before_save :setup_role
  elsif Rails.env.production?
    before_save :setup_role
  end
  
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :name, :email, :password, :password_confirmation, :remember_me, :role_ids
  # attr_accessible :title, :body
  
  has_many :microposts, dependent: :destroy
  has_and_belongs_to_many :roles
  
  def role?(role)
      return !!self.roles.find_by_name(role.to_s.camelize)
  end
  
  # Default role is "Member"
  def setup_role 
    if self.role_ids.empty?     
      self.role_ids = [2] 
    end
  end
end
