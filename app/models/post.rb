class Post < ApplicationRecord
    validates :comment, presence: true, length: { minimum: 10, maximum: 1000}

    #users
    belongs_to :user

    #attached images to posts
    mount_uploader :image, ImageUploader

    #Like button
    acts_as_votable 

    def upvote!(user)
        if user.voted_up_on? self
            unvote_by user
        else
            upvote_by user
        end
    end
      
    def downvote!(user)
        if user.voted_down_on? self
            unvote_by user
        else
            downvote_by user
        end
    end

    #reply
    has_many :replies, dependent: :destroy
end
