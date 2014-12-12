require 'rest_client'

class T7e::ApiCall
  class << self
    def push_call(file_path, language)
      RestClient.put(T7e.configuration.url, {
              yaml:     File.read(file_path),
              language: language
          })
    end

    def pull_call(language)
      RestClient.get(T7e.configuration.url + '?language=' + language)
    end
  end
end
