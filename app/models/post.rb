class Post < ApplicationRecord
    validates :title, presence: true, uniqueness: true
    validates :body, presence: true, length: { minimum: 10 }
    has_many :comments
    belongs_to :user
end
