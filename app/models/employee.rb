class Employee < ApplicationRecord
    validates :name, :email, :presence => true
    validates :email, uniqueness: true

    has_many :issues, dependent: :destroy
end
