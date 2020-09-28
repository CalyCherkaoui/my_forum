module ApplicationHelper

  def authentication_view_helper (author_signed, current_author)
    if author_signed

      link1 = link_to( current_author.name, author_path(current_author), class: "nav-list__link")
      msg_html1 = content_tag(:li, link1.html_safe, class: 'nav-list__item')

      link2 = link_to( "log-out", destroy_author_session, class: "nav-list__link" )
      msg_html2 = content_tag(:li, link2.html_safe, class: 'nav-list__item')

    else
      link1 = link_to("Log-in", new_author_session_path, class: "nav-list__link")
      msg_html_1 = content_tag(:li, link1.html_safe , class: 'nav-list__item')

      link2 = link_to("Sign-up", new_author_registration_path, class: "nav-list__link")

      msg_html_2 = content_tag(:li, link2.html_safe, class: 'nav-list__item')

    end

    return (msg_html_1 + msg_html_2).html_safe

  end

end
