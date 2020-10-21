class Post < ApplicationRecord
  belongs_to :user
  has_many :comments, dependent: :destroy
  
  validates :title, presence: true,
                    uniqueness: true,
                    length: { minimum: 2 }
  validates :body, presence: true,
                   uniqueness: true,
                   length: { minimum: 2 }
end
