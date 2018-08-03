# gibbon = Gibbon::Request.new(api_key: ENV["MAILCHIMP_API_KEY"])
# gibbon.timeout = 15
# gibbon.open_timeout = 15
# gibbon.throws_exception = true
# binding.pry
# puts "MailChimp API key: #{gibbon.api_key}" # temporary
# gibbon.lists(list_id).members.create(body: {email_address: "foo@bar.com", status: "subscribed", merge_fields: {FNAME: "First Name", LNAME: "Last Name"}})
Gibbon::Request.api_key = ENV["MAILCHIMP_API_KEY"]
Gibbon::Request.timeout = 15
Gibbon::Request.open_timeout = 15
Gibbon::Request.symbolize_keys = true
Gibbon::Request.debug = false
# binding.pry
