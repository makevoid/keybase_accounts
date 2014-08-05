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
    # instance_variable_get "@#{name}"
  end

  def display(thing)
    string = thing
    if thing.is_a? Array
      string = if thing.first.is_a? Hash
        thing.map{ |h| h.map{ |k, v| "#{k}: #{v}" }.join("\t") }
      else
        thing
      end.join "\n\t"
    end
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


  # utils - json

  require 'json'
  require 'net/https'

  def json_get(url)
    puts "getting & parsing json url: #{url}"
    body = begin
      resp = Net::HTTP.get_response URI.parse(url)
      resp.body
    rescue URI::InvalidURIError
      "{}"
    end
    JSON.parse body
  end


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