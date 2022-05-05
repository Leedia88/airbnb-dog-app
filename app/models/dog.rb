class Dog < ApplicationRecord
    has_many :dogs_strolls
    has_many :strolls, through: :dogs_strolls
    belongs_to :city
    validates_uniqueness_of :dog_name
end