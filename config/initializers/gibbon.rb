gibbon = Gibbon::Request.new(api_key: ENV["MAILCHIMP_API_KEY"])
gibbon.timeout = 15
gibbon.open_timeout = 15
gibbon.throws_exception = true
# binding.pry
# puts "MailChimp API key: #{gibbon.api_key}" # temporary
