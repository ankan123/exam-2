class Item < ApplicationRecord
  belongs_to :brand
  belongs_to :category

  validates :name, :quantity, :status, :notes, :presence => true

  has_many :issues, dependent: :destroy
  

end
