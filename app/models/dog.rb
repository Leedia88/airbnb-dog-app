class Dog < ApplicationRecord
    has_many :dogsitters, through: :strolls
    belongs_to :city
    validates_uniqueness_of :dog_name
end
