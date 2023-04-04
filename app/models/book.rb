class Book < ApplicationRecord
    validates :title, presence: true, length: {minimum:3, maximum:5}

    belongs_to :author
end
