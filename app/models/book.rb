class Book < ApplicationRecord
    validates :author, presence: true, length: {minimum:3, maximum:5}
    validates :title, presence: true, length: {minimum:3, maximum:5}
end
