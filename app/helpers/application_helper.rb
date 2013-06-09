module ApplicationHelper
  
  # Returns the full title on a per-page basis.
  def full_title(page_title)
    base_title = "Njooh"
      if page_title.empty?
        base_title
      else
        "#{base_title} | #{page_title}"
      end
  end
  
  #Sets application layout depending on whether the user is Admin or Member.
  #
  #Get More Ruby'ish way of doing this.
  def user_or_admin_layout
    if has_role?(current_user, 'admin')
      "admin"
    else
      "application"
    end
  end
  
  #Checks whether current user is Admin.
  def is_user_admin?
    if has_role?(current_user, 'admin')
      true
    else
      false
    end
  end
  
  #Checks whether current user is a Member.
  def is_user_member?
    if has_role?(current_user, 'member')
      true
    else
      false
    end
  end
end
