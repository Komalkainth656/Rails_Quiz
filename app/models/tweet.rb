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

#A Rails Model is a Ruby class that can add database records (think of whole rows in an Excel table), find particular data you're looking for, update that data, or remove data. ... The simplest way to write a model class is to let Rails do it for you.

#A Rails View is an ERb program that shares data with controllers through mutually accessible variables.