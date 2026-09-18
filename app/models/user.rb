class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :recoverable and :omniauthable

  has_many :orders

  devise :database_authenticatable, :registerable,
         :trackable, :rememberable, :validatable

  has_one :cart
  
end