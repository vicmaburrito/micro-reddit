class User < ApplicationRecord
    has_many :posts
<<<<<<< HEAD
    has_many :comments
=======
>>>>>>> 1f8913c2cf40faecdc46a82a9b65a47aea9bb2c4
    validates :username, length:{maximum: 12}, presence: true, uniqueness: true
    validates :age, presence: true, numericality:{greater_than_or_equal_to: 13}
    validates :email, presence: true, format:{with: /@/}
end
