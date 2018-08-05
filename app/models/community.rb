class Community < ApplicationRecord
  has_many :community_users
  has_many :users, :through => :community_users
  has_many :workshops
  has_many :discussions
  has_many :lessons
  has_many :assessments
  has_many :references
end
