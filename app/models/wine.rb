class Wine < ApplicationRecord
  has_many :mixture
  has_many :strain, through: :mixture
end
