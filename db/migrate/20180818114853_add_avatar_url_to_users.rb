class AddAvatarUrlToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :avatar_url, :string, :default => "https://s3-us-west-1.amazonaws.com/qpibeta/Logo_CircleOnly.svg"
  end
end
