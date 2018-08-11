module ApplicationHelper
  def active?(path)
    'w--current' if current_page?(path)
  end

  # will break if user inputs something like twitter.com/httpsIsCool
  # i'm willing to take that chance
  def append_https_if_necessary(user_input_link)
    if user_input_link.include?("https")
      link = user_input_link
    else
      link = "https://" + user_input_link
    end
    return link
  end
end
