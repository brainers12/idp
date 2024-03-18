# app/models/photo.rb

class Photo < ApplicationRecord
    belongs_to :user
    belongs_to :post
    belongs_to :comment
    has_many :tags
  
    validates :title, presence: true
    validates :url, presence: true
    validates :thumbnail_url, presence: true
  end
  