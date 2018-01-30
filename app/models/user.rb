class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :movies

  #this dependency deletes reviews if and only if the user is deleted. Makes the reviews depended on the user.
  has_many :reviews, dependent: :destroy
end