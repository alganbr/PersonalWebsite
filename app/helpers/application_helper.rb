module ApplicationHelper
  def login_helper(style)
    if user_signed_in?
      link_to "Logout", destroy_user_session_path, method: :delete, class: style
    else
      (link_to "Register", new_user_registration_path, class: style) + 
      (link_to "Login", new_user_session_path, class: style)
    end
  end

  def copyright_generator
    "@2018 | <strong>Algan Rustinya</strong> All rights reserved".html_safe
  end

  def nav_items
    [
      {
        url: root_path,
        title: 'Home'
      },
      {
        url: about_me_path,
        title: 'About Me'
      },
      {
        url: projects_path,
        title: 'Projects'
      },
      {
        url: blogs_path,
        title: 'Blog'
      },
      {
        url: contact_path,
        title: 'Contact'
      },
    ]
  end

  def nav_helper style, tag_type
    nav_links = ''

    nav_items.each do |item|
      if tag_type.empty?
        nav_links << "<a href='#{item[:url]}' class='#{style} #{active? item[:url]}'>#{item[:title]}</a>"
      else
        nav_links << "<#{tag_type}><a href='#{item[:url]}' class='#{style} #{active? item[:url]}'>#{item[:title]}</a></#{tag_type}>"
      end
    end

    nav_links.html_safe
  end

  def active? path
    "active" if current_page? path
  end
end
