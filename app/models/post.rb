class Post < ApplicationRecord
  belongs_to :user
<<<<<<< HEAD
  has_many :comments
=======
>>>>>>> 1f8913c2cf40faecdc46a82a9b65a47aea9bb2c4
  validates :title, length:{maximum: 30}, presence: true
  validates :body, length:{maximum: 100}, presence: true
end
