class User < ApplicationRecord
  has_secure_password

  has_many :movies, dependent: :destroy
  validates :email, presence: true, uniqueness: true, format: { with: /\A(\S+)@(.+)\.(\S+)\z/ }

end
