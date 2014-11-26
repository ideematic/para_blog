class InstallGenerator < Rails::Generators::NamedBase
  source_root File.expand_path('../templates', __FILE__)

  desc 'ParaBlog install generator'

  def welcome
    say 'Installing para blog ...'
  end

  def copy_migrations
    say 'Installing migrations'
    rake 'para_blog:install:migrations'
  end

  def install_gems
    gemfile_contents = File.read(Rails.root.join('Gemfile'))

    [
      ['acts_as_taggable_on']
    ].each do |name, version|
      unless gemfile_contents.match(/gem ['"]#{ name }['"]/)
        gem name unless version
        gem(name, version) if version
      end
    end
  end

  def bundle_install
    say 'Bundling installed gems ...'
    puts `bundle install`
  end

  def acts_as_taggable_on_install
    rake 'acts_as_taggable_on_engine:install:migrations'
  end

  def migrate
    rake 'db:migrate'
  end

  def add_require_to_application_controller
    prepend_to_file 'app/controllers/application_controller.rb' do
      "require 'para/component/post'\n"
    end
  end

  def add_admin_route
    inject_into_file 'config/routes.rb', after: '  namespace :admin do' do
      "\n    component :post do\n      resources: posts\n    end"
    end
  end

  def mount_engine
    mount_path = ask('Where would you like to mount ParaBlog engine ? [/]').presence || '/'
    gsub_file 'config/routes.rb', /mount Para::Engine.*\'/, ''
    route "mount ParaBlog::Engine, at: '#{mount_path.match(/^\//) ? mount_path : "/#{mount_path}"}', as: 'para_blog'"
  end
end
