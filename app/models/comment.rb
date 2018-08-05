class Comment < ApplicationRecord
  belongs_to :discussion
  belongs_to :user
  has_many :likes
end
