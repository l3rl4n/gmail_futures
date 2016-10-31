require 'spec_helper'

feature 'I want to implement futures to test gmail validation' do

  let(:options) {{ debug: true }}

  background do
    puts "background"
  end

  scenario 'Pass' do
    puts "Im going to pass"
  end

end