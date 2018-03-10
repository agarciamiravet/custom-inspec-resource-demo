# encoding:  utf-8
# Author:    Richard Nixon
# Copyright: 2018, The Authors

# Load up our API
require 'jungle_api'

# Define a class which extends Inspec.resource. The parameter (1) specifies
# the minimum version of Inspec required to support this resource.
class CheekyMonkey < Inspec.resource(1)
  name 'cheeky_monkey'
  desc 'A substitute for animal testing'


  # This method gets called whenever `describe cheeky_monkey`
  # gets called by the controls.
  def initialize(opts={})
    @opts = opts
  end

  def favourite_food
    monkey_properties[:favourite_food]
  end

  def nickname
    monkey_properties[:nickname]
  end

  # Gets the specified monkey from the API or raises an error if not found
  def monkey_properties
    api_client = Jungle::Animals::Client.new
    monkey = api_client.describe_monkey(@opts[:name])
    raise 'Monkey missing' unless monkey
    monkey
  end

  def to_s
    "Bloomin cheeky monkey #{@opts[:name] if @opts.is_a? Hash}:"
  end
end
