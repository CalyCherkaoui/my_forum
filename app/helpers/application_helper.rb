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

  # def authentication_view_helper(signed_in, current_author)
  #   link1 = ''
  #   link2 = ''
  #   msg_html_1 = ''
  #   msg_html_2 = ''

  #   if signed_in
  #     link1 = link_to(author_path(current_author.id), class: "nav-list__link") do 
  #      current_author.email
  #     end

  #     msg_html1 = content_tag(:li, link1, class: 'nav-list__item')

  #     link2 = link_to( "log-out", destroy_author_session_path, class: "nav-list__link")
  #     msg_html2 = content_tag(:li, link2, class: 'nav-list__item')

  #   else
  #     link1 = link_to("Log-in", new_author_session_path, class: "nav-list__link")
  #     msg_html_1 = content_tag(:li, link1, class: 'nav-list__item')

  #     link2 = link_to("Sign-up", new_author_registration_path, class: "nav-list__link")
  #     msg_html_2 = content_tag(:li, link2, class: 'nav-list__item')

  #   end

  #   final_html = msg_html_1 + msg_html_2

  #   return final_html.html_safe

  # end

end
