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

  def source_helper(layout_name)
    if session[:source]
      # greeting　＝　"Thanks for visiting me from #{session[:source]}"
      content_tag(:p, "Thanks for visiting me from #{session[:source]} and you are on the #{layout_name} layout", class: "source-greeting")
    end
  end

  def copyright_generator
    DevcampViewTool::Renderer.copyright 'Tomoko Ichikawa', 'All rights reserved'
  end

  def nav_items
    [
      {
        url: root_path,
        title: 'Home'
      },
      {
        url: about_path,
        title: 'About Me'
      },
      {
        url: contact_path,
        title: 'Contact'
      },
      {
        url: blogs_path,
        title: 'Blog'
      },
      {
        url: portfolios_path,
        title: 'Portfolio'
      },
    ]
  end

  def nav_helper style, tag_type
    nav_links = ''

    nav_items.each do |item|
      nav_links << "<#{tag_type}><a href='#{item[:url]}' class='#{style} #{active? item[:url]}'>#{item[:title]}</a></#{tag_type}>"
    end

    nav_links.html_safe
  end

  def active? path
    "active" if current_page? path
  end
end
