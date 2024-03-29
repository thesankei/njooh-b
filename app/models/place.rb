class Place < ActiveRecord::Base
  attr_accessible :data, :description, :location, :name,:assets_attributes,:asset
  
  belongs_to :user
  has_many :place_assets,:dependent => :destroy
  
  has_many :assets
  accepts_nested_attributes_for :assets, :allow_destroy => true
  
  #has_many :sellables, dependent: :destroy
  has_many :reviews, dependent: :destroy
  
  # Do data validations....validate 'data'
  validates :user_id, presence: true
  validates :description, presence: true, length: { maximum: 5000 }
  validates :location, presence: true, length: { maximum: 500 }
  validates :name, presence: true, length: { maximum: 500 }
end
