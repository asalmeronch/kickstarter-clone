class Project < ApplicationRecord
  has_many :rewards
  has_many :comments
  belongs_to :category
end
