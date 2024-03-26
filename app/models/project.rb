class Project < ApplicationRecord
  has_many :rewards
  belongs_to :category
end
