# Hooks in Ruby
require 'byebug'

module Stock
  def self.included(klass)
    puts "#{klass} is in #{self}"
  end
end

class Product
  def self.inherited(item)
    puts "#{self} has #{item}"
  end

  def method_missing(input, *args)
    puts "#{input} don't exists in this #{self} object"
  end
end

class Item < Product
  include Stock

  def initialize(description)
    @description = description
  end
end

Item.new("Cerveja Colorado").call

