class Purchase < ApplicationRecord
  belongs_to :user
  belongs_to :clothing
  attr_accessor :month, :year

end
