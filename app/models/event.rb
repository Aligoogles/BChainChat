class Event < ApplicationRecord
    #attached images to events
    mount_uploader :image, ImageUploader

    belongs_to :user
end
