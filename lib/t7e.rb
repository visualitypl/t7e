require "t7e/version"
require 'net/http'
require 'net/https'
require 't7e/push'
require 't7e/pull'
require 't7e/api_call'
require 't7e/configuration'

module T7e
 class << self
    attr_accessor :configuration
  end

  def self.execute(command, path = nil)
    unless File.exist?('t7e_config.yml')
      puts "you have to create t7e_config.yml"
    else
      @configuration = Configuration.new()
      if command == "push"
        T7e::Push.new().execute(path)
      elsif command == "pull"
        T7e::Pull.new().execute(path)
      else
        puts "this comand not exist. please use pull or push"
      end
    end
  end
end
