class Blogpost < ActiveRecord::Base
  attr_accessible :content, :title, :tag_list
  
  default_scope order: 'blogposts.created_at DESC'
  
  belongs_to :user
  has_many :comments, dependent: :destroy
  
  acts_as_taggable
  
  # Do data validations
  validates :title, presence: true, length: { maximum: 140 } #Limit Title lenght to 140 chars
  validates :content, presence: true, length: { maximum: 5000 }
  validates :user_id, presence: true
  
  # Returns blogposts from the users being followed by the given user.
  # Uses SQL subselects to do efficient feed retrieval.
  def self.from_users_followed_by(user)
    followed_user_ids = "SELECT followed_id FROM relationships
                          WHERE follower_id = :user_id"
    where("user_id IN (#{followed_user_ids}) OR user_id = :user_id",
          user_id: user.id)
  end
end
