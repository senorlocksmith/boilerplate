class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :uid, :invitable, :database_authenticatable, :registerable, :confirmable, :lockable, :timeoutable, :trackable,
         :recoverable, :rememberable, :validatable
  #belongs_to :account
  has_many :projects
end
