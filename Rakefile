desc "Watch the site and regenerate when it changes"
task :watch do
  require 'fssm'
  require 'rebuild.rb'
  puts " Watching for Changes "
  FSSM.monitor("#{File.dirname(__FILE__)}/source", '**/*') do
    update {|base, relative| rebuild_site(relative)}
    delete {|base, relative| rebuild_site(relative)}
    create {|base, relative| rebuild_site(relative)}
  end
end