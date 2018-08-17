module ApplicationHelper
  def active?(path)
    'w--current' if current_page?(path)
  end

  def discussions?(path)
    # binding.pry
    return 'w--current' if current_page?(path)
  end

  def append_https_if_necessary(user_input_link)
    if user_input_link.index('http') == 0
      link = user_input_link
    else
      link = "https://" + user_input_link
    end
    return link
  end
end
