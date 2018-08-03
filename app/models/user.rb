class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  after_create :subscribe_user_to_mailing_list

  private

  def subscribe_user_to_mailing_list
    # SubscribeUserToMailingListJob.perform_later(self)
    gibbon = Gibbon::Request.new
    # gibbon.lists(list_id)({:id => ENV["MAILCHIMP_LIST_ID"], :email => {:email => user.email}, :double_optin => false})
    gibbon.lists(ENV["MAILCHIMP_LIST_ID"]).members.create(body: {email_address: self.email, status: "subscribed", merge_fields: {FULLNAME: self.name}})
  end

end
