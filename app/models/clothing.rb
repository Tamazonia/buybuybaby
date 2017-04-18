class Clothing < ApplicationRecord
  belongs_to :user
  validates :description, presence: :true
  validates :age, presence: :true
  validates :price, presence: :true
  validates :gender, presence: :true
  mount_uploader :photo, PhotoUploader
end
