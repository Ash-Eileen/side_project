class Pet < ApplicationRecord
    enum animal: { cat: 0, dog: 1, other: 2 }
    has_one_attached :picture
end
