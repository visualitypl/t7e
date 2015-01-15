require 'rest_client'

class T7e::ApiCall
  class << self
    def push_call(file_path, language)
      RestClient.put(api_url, {
              yaml:     File.read(file_path),
              language: language
          })
    end

    def pull_call(language)
      RestClient.get(api_url + '?language=' + language)
    end

    private
    def api_url
      URI.join(T7e.configuration.url, 'api/v1/projects', T7e.configuration.api_key)
    end
  end
end
