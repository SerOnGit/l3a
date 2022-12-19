module SiaxlesHelper

    def day_and_time(siaxle)
        siaxle.starts_at.strftime("%B %d at %I:%M %P")
      end

    def sia_image(siaxle)
        if siaxle.sia_image.attached?
          image_tag siaxle.sia_image
        else
          image_tag "placeholder.png"
        end
      end


end
