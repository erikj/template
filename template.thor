class Template < Thor
  include Thor::Actions

  desc "create NAME", "create an application template: htb (Haml TBS), stb (Slim TBS)"
  method_options :force => :boolean
  def create name

    if name != 'templates' and (name=='stb' or name=='htb')
      @templating_lib = name=='stb' ? 'slim' : 'haml'
      puts "Creating app template #{name}.rb"
      template File.join(%w(templates template_template.erb)), "#{name}.rb", options
    else
      puts "Invalid template specified: #{name}"
    end
  end

  def self.source_root
    File.dirname __FILE__
  end

end