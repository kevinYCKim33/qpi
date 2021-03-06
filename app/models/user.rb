class User < ApplicationRecord
  has_attached_file :profile_pic, styles: {
    discussion: '52x52#',
    main: '300x300#',
  }

  validates_with AttachmentSizeValidator, attributes: :profile_pic, less_than: 5.megabytes
  #jpeg, png gif will work
  validates_attachment_content_type :profile_pic, :content_type => /\Aimage\/.*\Z/

  has_many :workshops
  has_many :community_users
  has_many :communities, :through => :community_users
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates :name, presence: true
  validates :email, presence: true

  after_create :subscribe_user_to_mailing_list

  def member?(community)
    self.communities.include?(community)
  end

  # def join_community(community)
  #   self.communities << community
  # end

  private

  def subscribe_user_to_mailing_list
    # SubscribeUserToMailingListJob.perform_later(self)
    # implement with Sidekiq later on
    if self.subscribed
      gibbon = Gibbon::Request.new
      # gibbon.lists(list_id)({:id => ENV["MAILCHIMP_LIST_ID"], :email => {:email => user.email}, :double_optin => false})
      gibbon.lists(ENV["MAILCHIMP_LIST_ID"]).members.create(body: {email_address: self.email, status: "subscribed", merge_fields: {FNAME: self.name}})
    end
  end

end
