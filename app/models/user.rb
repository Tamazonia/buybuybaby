class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :clothings, dependent: :destroy
  has_many :purchases, dependent: :destroy
  has_many :clothings, through: :purchases
end
