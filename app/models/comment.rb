class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :post

  validates :user, :post, presence: true
  validates :redditor, presence: true,
                    uniqueness: true,
                    length: { minimum: 2 }
  validates :body,  presence: true,
                    uniqueness: true,
                    length: { minimum: 2 }
end
