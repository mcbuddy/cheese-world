class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  
  if Rails.env.production?
  devise :database_authenticatable, :recoverable, :rememberable, :trackable, :validatable, :registerable
  else
  devise :database_authenticatable, :recoverable, :rememberable, :trackable, :validatable, :registerable 
  end

  # Setup accessible (or protected) attributes for your model
  attr_accessible :name, :email, :password, :password_confirmation, :remember_me
  # attr_accessible :title, :body

  validates_uniqueness_of :email

  # has_many :cheeses
end
