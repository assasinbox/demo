module ApplicationHelper

  def title
    base_title = "Demo :: "
    if @title.nil?
      base_title
    else
      "#{base_title} :: #{@title}"
    end
  end

  def logo
    image_tag("logo.jpg", :alt => "Sample App", :class => "round pull-left", :style => 'height:40px')
  end

end
