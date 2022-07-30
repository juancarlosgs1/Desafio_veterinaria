class PetHistory < ApplicationRecord
    belongs_to :pet
    validates :weight, :height, :description, presence: true
end
