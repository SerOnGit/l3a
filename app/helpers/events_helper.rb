module EventsHelper


  def day_and_time(event)
    event.starts_at.strftime("%B %d at %I:%M %P")
  end

  def eve_image(event)
    if event.eve_image.attached?
      image_tag event.eve_image
    else
      image_tag "placeholder.png"
    end
  end

end
