class User < ApplicationRecord
  has_many :workshops
  has_many :comments
  has_many :community_users
  has_many :communities, :through => :community_users
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  after_create :subscribe_user_to_mailing_list

  def member?(community)
    self.communities.include?(community)
  end

  def join_community(community)
    self.communities << community
  end


  private

  def subscribe_user_to_mailing_list
    # SubscribeUserToMailingListJob.perform_later(self)
    # implement with Sidekiq later on
    gibbon = Gibbon::Request.new
    # gibbon.lists(list_id)({:id => ENV["MAILCHIMP_LIST_ID"], :email => {:email => user.email}, :double_optin => false})
    gibbon.lists(ENV["MAILCHIMP_LIST_ID"]).members.create(body: {email_address: self.email, status: "subscribed", merge_fields: {FULLNAME: self.name}})
  end

end
