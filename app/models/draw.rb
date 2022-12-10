class Draw < ApplicationRecord
  has_many :party_members, dependent: :destroy
end
