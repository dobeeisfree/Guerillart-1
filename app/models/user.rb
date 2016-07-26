class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  has_many :registers
  has_many :artists, through: :registers
  has_many :like_shows
  has_many :shows, through: :like_shows
  has_many :posts
  has_many :comments


  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end