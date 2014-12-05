class T7e::Push

  def execute(path)
    if File.directory?(path)
      T7e.configuration.languages.each do |lang|
        file = File.join(path, "#{lang}.yml")
        if File.exist?(file)
          puts "#{file}"
          T7e::ApiCall.push_call(file, lang)
        end
      end
    else
      puts "add corect path"
    end
  end
end
