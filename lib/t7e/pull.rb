class T7e::Pull

  def execute(path)
    T7e.languages.each do |lang|
      request = T7e::ApiCall.pull_call(lang)
      create_file(request)
    end
  end

private
  def create_file(request)
  end
end
