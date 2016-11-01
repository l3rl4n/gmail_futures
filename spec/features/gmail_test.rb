require 'spec_helper'

feature 'I want to implement futures to test gmail validation' do

  let(:options) {{ debug: true }}
  let(:global)  {{}}

  background do
    global[:confirmation] = rand(100000...999999)
    print "Confirmation ##{global[:confirmation]}"
  end

  scenario 'Send an email' do

    require 'gmail'
    email_address = ENV['email']
    pass          = ENV['pass']
    gmail = Gmail.connect!(email_address, pass)
    puts "inbox count = #{gmail.inbox.count}"

    @conf = global[:confirmation]
    email = gmail.compose do
      binding.pry
      to email_address
      subject "Confirmation ##{@conf} Having fun in Puerto Rico!"
      body "Spent the day on the road...\nagain, confirmation ##{@conf}\n\nLove always, B-drizzle"
    end
    email.deliver!

    binding.pry
    puts 'sd'



  end

end