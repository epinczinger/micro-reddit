class Post < ApplicationRecord
    belongs_to :users
    validates :title, presence: true, length: { minimum: 7 }
    validates :text, presence: true, length: { minimum: 30 }
end
