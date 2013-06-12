class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  
  #Bad hack.........................FIX THIS!!!
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
  has_many :relationships, foreign_key: "follower_id", dependent: :destroy
  has_many :followed_users, through: :relationships, source: "followed" #should be _id
  has_many :reverse_relationships, foreign_key: "followed_id",
                                   class_name: "Relationship",
                                   dependent: :destroy
                                   
  has_many :followers, through: :reverse_relationships, source: :follower
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
  
  #Gets current user activity feed.
  def feed
    # This is preliminary implementation.
    #Micropost.where("user_id = ?", id)
    Micropost.from_users_followed_by(self)
  end
  
  def following?(other_user)
    relationships.find_by_followed_id(other_user.id)
  end
  
  def follow!(other_user)
    relationships.create!(followed_id: other_user.id)
  end
  
  def unfollow!(other_user)
    relationships.find_by_followed_id(other_user.id).destroy
  end
end
