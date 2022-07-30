class PetHistory < ApplicationRecord
    belongs_to :pet
    validates :weight, :heigth, :description, presence: true
end
