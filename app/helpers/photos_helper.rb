module PhotosHelper

    def pho_image(photo)
        if photo.pho_image.attached?
            if photo.pho_image.content_type =~ /video/
                video_tag url_for(photo.pho_image), :size => "320x240", :controls => true
            else
            image_tag photo.pho_image
            end
          else
          image_tag "placeholder.png"
        end
      end




end
