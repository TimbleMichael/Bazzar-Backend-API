class Recipe < ApplicationRecord
    belongs_to :user

    validates :title, presence: true
    validates :serving_size, presence: true
    validates :cook_time, presence: true
    validates :prep_time, presence: true
    validates :method, presence: true
    validates :ingredients, presence: true


end
