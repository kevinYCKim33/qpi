class LandingController < ApplicationController
  before_action :redirect_if_logged_in

  def home
    @title = 'QPi Education | STEM Professional Development'
  end

  def about
    @title = 'About'
  end

  def contact
    @title = 'Contact'
  end

  private

  def redirect_if_logged_in
    redirect_to my_communities_path if user_signed_in?
  end

  def aws_directory(photo_file_path)
    'https://s3-us-west-1.amazonaws.com/qpibeta/' + photo_file_path
  end

end
