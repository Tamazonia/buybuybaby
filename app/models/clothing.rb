class Clothing < ApplicationRecord
  belongs_to :user
  validates :description, presence: :true
  validates :age, presence: :true
  validates :price, presence: :true
  validates :gender, presence: :true
  mount_uploader :photo, PhotoUploader

  has_one :purchase, dependent: :destroy

  def owner # dono da roupa
    return self.user
  end

  def customer # comprador da roupa
    return purchase.user
  end

  def self.search(gender=nil, age=nil)
    if gender
      where(gender: gender)
    elsif age
      where(age: age)
    else
      all
    end
  end

  def up_for_sale?
    !bought
  end
end
