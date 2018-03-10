# encoding:  utf-8
# Author:    Richard Nixon
# Copyright: 2018, The Authors

module Jungle
  class Animals
    # The Fake API client
    class Client
      # Return a fake data set
      def describe_monkey(name)
        monkeys = {
          'bobo'  => { favourite_food: 'bananas', nickname: 'the clown' },
          'tom'   => { favourite_food: 'peanuts', nickname: 'shorty' },
          'simon' => { favourite_food: 'beer',    nickname: 'king of the jungle' }
        }
        monkeys[name]
      end
    end
  end
end
