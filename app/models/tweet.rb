class Tweet < ApplicationRecord
    validates(
        :twitter,
        presence: { message: " must exist" },
        length: { minimum: 3 }
    )
    validates(
        :tweet,
        presence: { message: "must exist" },
        length: { minimum: 20 }
    )
end
