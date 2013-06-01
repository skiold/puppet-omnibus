class Ruby193 < FPM::Cookery::Recipe
  description 'The Ruby virtual machine'

  name 'ruby'
  version '1.9.3.429'
  revision 1
  homepage 'http://www.ruby-lang.org/'
  source 'http://ftp.ruby-lang.org/pub/ruby/1.9/ruby-1.9.3-p429.tar.bz2'
  sha256 '9d8949c24cf6fe810b65fb466076708b842a3b0bac7799f79b7b6a8791dc2a70'

  maintainer '<github@tinycat.co.uk>'
  vendor     'fpm'
  license    'The Ruby License'

  section 'interpreters'

  build_depends 'autoconf', 'readline-devel', 'bison', 'zlib-devel',
                'openssl-devel', 'libyaml-devel', 'ncurses-devel', 'libffi-devel', 'gdbm-devel'

  depends 'libffi', 'ncurses', 'readline', 'openssl', 'libyaml', 'zlib', 'gdbm'

  def build
    configure :prefix => "/opt/puppet-omnibus/embedded", 'disable-install-doc' => true
    make
  end

  def install
    make :install
  end
end
