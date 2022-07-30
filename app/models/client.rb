class Client < ApplicationRecord
    has_many :pets, dependent: :destroy
    validates :name, :phone, :email, presence: true

    def pet_count
        pets.count
    end
end
