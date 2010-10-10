module ApplicationHelper

  def logo
    image_tag("logo.png", :alt => "MicroPayment", :class => "roun")
  end
  
  # Return a title on a per-page basis.
  def title
    base_title = "MicroPayment"
    if @title.nil?
      base_title
    else
      "#{base_title} | #{@title}"
    end
  end
end
