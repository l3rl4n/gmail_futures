require 'spec_helper'

feature 'I want to implement futures to test gmail validation' do

  scenario 'Login and get inbox count' do

    # email_address = ENV['email']
    # pass          = ENV['pass']

    future = Concurrent::Future.execute{ sleep 5 }
    # future = Concurrent::Future.execute{ Gmail.connect!(email_address, pass).inbox.count }

    1.upto(7) {|i| print "future.state = #{future.state}\n"; sleep 1}

    raise "ERROR: Inbox was lower than expected" unless future.value > 1
    print "     Im done with the inbox - count: #{future.value}\n".yellow
  end

  scenario 'Second it block with no wait' do
    print "     No waiting for me...\n".cyan
  end

end