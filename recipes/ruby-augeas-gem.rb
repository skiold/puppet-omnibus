class RubyAugeasGem < FPM::Cookery::Recipe
  description 'Ruby-augeas as a gem'

  name 'ruby-augeas'
  version '0.5.0'
  source "nothing", :with => :noop

  build_depends 'augeas-devel', 'pkgconfig'
  depends 'augeas', 'pkgconfig'

  def build
    cleanenv_safesystem "/opt/puppet-omnibus/embedded/bin/gem install #{name} -v #{version}"
  end

  def install
    # Do nothing!
  end
end
