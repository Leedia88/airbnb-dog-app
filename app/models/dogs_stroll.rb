class DogsStroll < ApplicationRecord
    has_many :dogs
    has_many :strolls
    has_many :dog_sitters, through: :strolls
    validates :stroll_id, uniqueness: { scope: :dog_id }
end
