class Template < Thor
  include Thor::Actions

  desc "create NAME", "create an application template: htb (Haml TBS), stb (Slim TBS)"
  method_options :force => :boolean
  def create name

    if name=='stb' or name=='htb'
      dest_file = "#{name}.rb"
      @markup_lib = name=='stb' ? 'slim' : 'haml'
      puts "Creating app template #{dest_file}"
      template File.join(%w(templates template_template.erb)), dest_file, options
    else
      puts "Invalid template specified: #{name}"
    end
  end

  def self.source_root
    File.dirname __FILE__
  end

end