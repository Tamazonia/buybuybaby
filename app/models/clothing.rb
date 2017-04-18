class Clothing < ApplicationRecord
  belongs_to :user
  validates :description, presence: :true
  validates :age, presence: :true
  validates :price, presence: :true

  has_one :purchase, dependent: :destroy


  def owner # dono da roupa
    return self.user
  end

  def customer # comprador da roupa
    return purchase.user
  end

end
