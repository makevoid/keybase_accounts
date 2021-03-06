require_relative "main"


class KeybaseAccounts

  # easy method definition [for array patch] - taken from github.com/makevoid/blizz

  module ClassMethods
    def create_accessors(accessors)
      attr_accessor *accessors
    end
  end
  extend ClassMethods


  # DSL

  alias :iv_get :instance_variable_get
  alias :iv_set :instance_variable_set

  def arrays(names)
    KeybaseAccounts.create_accessors names
    for name in names
      iv_set "@#{name}", []
    end
    # iv_get "@#{name}"
  end

  def display(thing)
    string = thing
    string = thing.join("\n\t") if thing.is_a? Array
    puts
    puts "\t#{string}"
    puts
  end

  def execute(command)
    puts
    puts "executing #{command}"
    output = `#{command}`
    puts output
    puts
    output
  end

  # utils

  def log(object)
    puts object.inspect
  end

  def inspect(object)
    raise object.inspect
  end

  alias :debug :inspect

  # main

  def initialize

  end

  def run
    main
  end

  include Main

end


module Parsing
  def parse(regex_string)
    scan(/#{regex_string}/m)
  end
end

# TODO: add 2.0+ requirement and use Refinements
class String
  include Parsing
  # future: refine with Parsing
end
#

kb_acc = KeybaseAccounts.new
kb_acc.run
