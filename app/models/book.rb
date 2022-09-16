class Book < ApplicationRecord
    validates :title, presence: true
    validates :author, presence: true
    validates :price, presence: true
    validates :published_date, presence: true
   

    # attribute :title, :string
    # attribute :author, :string
    # attribute :price, :numeric
    # attribute :published_date, :date
end
