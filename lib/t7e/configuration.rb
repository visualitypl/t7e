require 'yaml'

class T7e::Configuration
  attr_accessor :api_key, :url, :languages

  CONFIG_FILE = 't7e_config.yml'

  def initialize
    read_config.each do |setting, value|
      send("#{setting}=", value)
    end
  end

  private
  def read_config
    YAML.load(File.read(CONFIG_FILE))
  end
end
