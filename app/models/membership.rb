class Membership < ApplicationRecord
    belongs_to :gym
    belongs_to :client

    # validates :gym, numericality: {equal_to: 1}

end
