module PostsHelper
    def upvote_label(post, user)
        label_text = if user.voted_up_on? post
                "Unlike"
            else
                "Like"
            end
        tag.span do
            "#{label_text}"
        end
    end
    
      
    def upvote_label_styles(post, user)
        if user.voted_up_on? post
          "background-color: purple; color: #ffffff;  border-radius: 5px;"
        end
    end
    
end
