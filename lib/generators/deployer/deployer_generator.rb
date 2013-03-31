class DeployerGenerator < Rails::Generators::NamedBase
  source_root File.expand_path('../templates', __FILE__)
  argument :user, :type => "string", :default => "deploy"

  def generate_nginx_conf_file
    @application = file_name
    @user = user
    template "nginx.conf.erb", "config/nginx.conf"
  end

  def generate_unicorn_rb_file
    @application = file_name
    @user = user
    template "unicorn.rb.erb", "config/unicorn.rb"
  end

  def generate_unicorn_init_sh_file
    @application = file_name
    @user = user
    template "unicorn_init.sh.erb", "config/unicorn_init.sh"
  end

  def generate_capistrano
    capify!
    @application = file_name
    @user = user
    template "deploy.rb", "config/deploy.rb"
  end
end
