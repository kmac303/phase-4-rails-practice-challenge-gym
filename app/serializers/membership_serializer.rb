class MembershipSerializer < ActiveModel::Serializer
  attributes :id, :charge

  belongs_to :gym
  belongs_to :client
end
