# encoding:  utf-8
# Author:    Richard Nixon
# Copyright: 2018, The Authors
#----------------------------------------------------------
control 'missing' do
  impact 0.7
  title 'what if our monkey does not exist?'

  describe cheeky_monkey(name: 'adrian') do
    its('favourite_food') { should eq 'peanuts' }
  end
end
#----------------------------------------------------------
control 'bobo' do
  impact 0.7
  title 'food'
  desc 'Check if Bobo loves bananas'

  describe cheeky_monkey(name: 'bobo') do
    its('favourite_food') { should eq 'bananas' }
  end
end
#----------------------------------------------------------
control 'simon' do
  impact 0.7
  title 'nickname'
  desc "Who's yo daddy?"

  describe cheeky_monkey(name: 'simon') do
    its('nickname') { should eq 'king of the north' }
  end
end
