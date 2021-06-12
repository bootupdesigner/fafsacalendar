class Seminar < ApplicationRecord
  belongs_to :user
  has_many :signups
end
