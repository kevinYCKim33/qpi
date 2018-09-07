module LandingHelper
  def aws_directory(photo_file_path)
    'https://s3-us-west-1.amazonaws.com/qpi-static-images/' + photo_file_path
  end
end
