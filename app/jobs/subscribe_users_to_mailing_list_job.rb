# none of these used right now, but probably good idea to have a background worker handle email logic

# class SubscribeUsersToMailingListJob < ApplicationJob
#   queue_as :default
#
#   def perform(*args)
#     # Do something later
#   end
# end
#
#
# class SubscribeUserToMailingListJob < ActiveJob::Base
#   queue_as :default
#
#   def perform(user)
#     gibbon = Gibbon::Request.new
#     # gibbon.lists(list_id)({:id => ENV["MAILCHIMP_LIST_ID"], :email => {:email => user.email}, :double_optin => false})
#     gibbon.lists(ENV["MAILCHIMP_LIST_ID"]).members.create(body: {email_address: user.email, status: "subscribed", merge_fields: {FULLNAME: user.name}})
#   end
# end

# gibbon.lists(list_id).members.create(body: {email_address: "foo@bar.com", status: "subscribed", merge_fields: {FNAME: "First Name", LNAME: "Last Name"}})
