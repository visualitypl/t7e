class T7e::Pull

  def execute(path)
    T7e.configuration.languages.each do |lang|
      request = T7e::ApiCall.pull_call(lang)
      create_file(request, lang)
    end
  end

private
  def create_file(request, lang)
    content = request.to_str
    target = "config/locales/t7e_#{lang}.yml"
    File.open(target, "w+") do |f|
     f.write(content)
    end
  end
end
