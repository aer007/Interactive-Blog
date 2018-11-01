module ApplicationHelper
  def login_helper
     if current_user.is_a?(GuestUser)
       (link_to "Register", new_user_registration_path, class: "nav-link") +
       " ".html_safe +
       (link_to "Sign In", new_user_session_path, class: "nav-link")
     else
       link_to "Logout", destroy_user_session_path, method: :delete, class: "nav-link"
     end
  end

  def source_helper(layout_name)
      if session[:source]
        greeting = "Thanks for visiting me from #{session[:source]} and you are on the #{layout_name} layout!"
        content_tag(:p, greeting, class:"source-greeting")

      end
  end

  def copyright_generator
    DevcampViewTool::Renderer.copyright "Amanda Robinson", "All rights reserved"
  end
end

