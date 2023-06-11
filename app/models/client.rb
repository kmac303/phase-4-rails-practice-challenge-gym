class Client < ApplicationRecord
    has_many :memberships
    has_many :gyms, through: :memberships

    validates :gym, numericality: {equal_to: 1}

end
