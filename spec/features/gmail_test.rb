require 'spec_helper'

feature 'I want to implement futures to test gmail validation' do

  scenario 'Login and get inbox count' do
    email_address = ENV['email']
    pass          = ENV['pass']
    gmail_inbox_count = Gmail.connect!(email_address, pass).inbox.count
    raise "ERROR: Inbox was lower than expected" unless gmail_inbox_count > 1
    print "     Im done with the inbox\n".yellow
  end

  scenario 'Second it block with no wait' do
    print "     No waiting for me...\n".cyan
  end

end