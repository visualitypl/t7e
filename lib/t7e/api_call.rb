require 'rest_client'

class T7e::ApiCall
  def self.push_call(file_path, language)
    RestClient.put(T7e.configuration.url, {
        :yaml => File.read(file_path),
        :language => language
      })
  end

  def self.pull_call(language)
    RestClient.get(T7e.configuration.url + '?language=' + language )
  end
end
