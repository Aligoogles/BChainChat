class Event < ApplicationRecord
    validates :title, presence: true, length: { minimum: 2, maximum: 30}
    validates :description, presence: true, length: { minimum: 10, maximum: 2500}
    validates :location, presence: true, length: { minimum: 3, maximum: 30}
    validates :limit, presence: true, numericality: { greater_than: 1 }
    validates :date, presence: true
    validates :time, presence: true

    #attached images to events
    mount_uploader :image, ImageUploader

    belongs_to :user
end
