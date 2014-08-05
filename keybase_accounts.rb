require_relative "main"


class KeybaseAccounts

  # easy method definition [for array patch] - taken from github.com/makevoid/blizz

  # def self.included(mod)
  #   mod.send :extend, ClassMethods
  # end

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
      instance_variable_set "@#{name}", []
    end
    # instance_variable_get "@#{name}"
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


  # main

  def initialize

  end

  def run
    main
  end

  include Main

end


#

kb_acc = KeybaseAccounts.new
kb_acc.run