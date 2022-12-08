class Recipe < ApplicationRecord
    belongs_to :user
    has_many :comments
    has_many :likes

    validates :title, presence: true
    validates :serving_size, presence: true
    validates :cook_time, presence: true
    validates :prep_time, presence: true
    validates :method, presence: true
    validates :ingredients, presence: true

    default_scope { order("created_at DESC") }


end
