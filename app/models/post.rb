class Post < ApplicationRecord
  belongs_to :user
  validates :title, length:{maximum: 30}, presence: true
  validates :body, length:{maximum: 100}, presence: true
end
