module ApplicationHelper
  # def set_title
  #   @page_title = "Devcamp Portfolio | My Portfolio Website"
  #   @blogs_index_title = "My Portfolio Blog"
  # end

  # def sample_helper
  #   "<p>My helper</p>".html_safe
  # end

  def login_helper style = ''
    if current_user.is_a?(GuestUser)
      (link_to "Register", new_user_registration_path, class: style) +
      " ".html_safe +
      (link_to "Login", new_user_session_path, class: style)
    else
      link_to "Logout", destroy_user_session_path, method: :delete, class: style
    end
  end

  # def sample_helper
  #   content_tag(:div, "My content", class: "my-class")
  # end

  def source_heiper(layout_name)
    if session[:source]
      # greeting　＝　"Thanks for visiting me from #{session[:source]}"
      content_tag(:p, "Thanks for visiting me from #{session[:source]} and you are on the #{layout_name} layout", class: "source-greeting")
    end
  end

  def copyright_generator
    DevcampViewTool::Renderer.copyright 'Tomoko Ichikawa', 'All rights reserved'
  end
end
