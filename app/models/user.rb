class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :workvents
  has_many :worklifts
  has_many :lifevents
  has_many :lifelifts
  has_many :relationshipvents
  has_many :relationshiplifts
  has_many :othervents
  has_many :otherlifts

end
