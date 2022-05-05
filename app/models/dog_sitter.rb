class DogSitter < ApplicationRecord
    has_many :strolls
    has_many :dogs , through: :strolls
    belongs_to :city
    validates_uniqueness_of :dogsitter_name
end
