class User < ApplicationRecord
  validates :name,
  presence: true,
  uniqueness: true,
  length: {maximum: 5}
end
