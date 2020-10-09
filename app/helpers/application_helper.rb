module ApplicationHelper

  def flash_class_helper(type)
    case type.to_sym
    when :notice then "success"
    when :success then "success"
    when :error then "danger"
    when :alert then "danger"
    when :warning then "warning"
    end
  end

  def flash_prefix_helper(type)
    case type.to_sym
    when :notice then "Notice!"
    when :success then "Success!"
    when :error then "Error!"
    when :alert then "Alert!"
    when :warning then "Warning!"
    end 
  end

  
  def social_media_profile_helper(key, value)
    case key
    when "facebook" then icon_link(value, "fab fa-facebook", "https://www.facebook.com/")
    when "instagram" then icon_link(value, "fab fa-instagram", "https://www.instagram.com/")
    else return
    end
  end


  def icon_link(value, icon_class, url_root)

    output = "<a href=\"#{url_root}#{value}\"><i class=\"#{icon_class}\"><\/i><\/a>".html_safe

  end


end
