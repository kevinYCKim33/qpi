module DealingsHelper
  def aws_directory(photo_file_path)
    'https://s3-us-west-1.amazonaws.com/qpibeta/' + photo_file_path
  end
end
