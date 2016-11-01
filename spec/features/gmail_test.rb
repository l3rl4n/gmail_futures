require 'spec_helper'

feature 'I want to implement futures to test gmail validation' do
  include Minitest::Capybara::Behaviour

  let(:options) {{ debug: true }}
  let(:global)  {{}}

  # background do
  #   global[:confirmation] = rand(100000...999999)
  #   print "Confirmation ##{global[:confirmation]}"
  # end

  scenario 'Login and get inbox count' do

    email_address = ENV['email']
    pass          = ENV['pass']
    gmail = Gmail.connect!(email_address, pass)
    raise "ERROR: Inbox was lower than expected" unless gmail.inbox.count > 1
    print "     Im done with the inbox\n".yellow
    # puts "inbox count = #{gmail.inbox.count}"

    # email = gmail.compose do
    #   binding.pry
    #   to email_address
    #   subject "Confirmation ##{@conf} Having fun in Puerto Rico!"
    #   body "Spent the day on the road...\nagain, confirmation ##{@conf}\n\nLove always, B-drizzle"
    # end
    # email.deliver!

  end

  scenario 'Second it block with no wait' do
    print "     No waiting for me...\n".cyan
    true
  end

end