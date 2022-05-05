class Stroll < ApplicationRecord
    validates :dog_sitter_id_id, uniqueness: { scope: :dog_id_id }
end