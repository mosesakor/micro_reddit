class User < ApplicationRecord
  has_many :comments, dependent: :destroy
  has_many :posts, dependent: :destroy

  validates :username, presence: true,
                       length: { in: 4..15 },
                       uniqueness: true
  validates :email, presence: true,
                    uniqueness: true
end
