require 'rubygems'
require 'rspec/core/rake_task'

desc 'Test the Templates Page'
RSpec::Core::RakeTask.new :gmail_futures, [:email, :password] do |t, args|
  t.rspec_opts = '--color --format documentation'
  t.rspec_opts << "email=#{args[:email]} pass=#{args[:pass]}" if args[:email]
  t.pattern = 'spec/features/gmail_test.rb'
end

task :default => [:gmail_futures]