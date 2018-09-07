module ApplicationHelper
  #navbar highlighting
  def active?(path)
    'w--current' if current_page?(path)
  end

  def discussions?(path)
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

  def aws_directory(photo_file_path)
    'https://s3-us-west-1.amazonaws.com/qpi-static-images/' + photo_file_path
  end
end
