module EventsHelper
    def uprsvp_label(event, user)
        label_text = if user.voted_up_on? event
                "UN RSVP"
            else
                "RSVP"
            end
        tag.span do
            "#{label_text}"
        end
    end
    
      
    def uprsvp_label_styles(event, user)
        if user.voted_up_on? event
          "background-color: purple;"
        end
    end
end
