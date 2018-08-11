module ApplicationHelper
  def active?(path)
    'w--current' if current_page?(path)
  end
end
