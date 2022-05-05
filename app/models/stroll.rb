class Stroll < ApplicationRecord
    has_many :dogs_strolls
    has_many :dogs, through: :dogs_trolls
    belongs_to :dog_sitter
end