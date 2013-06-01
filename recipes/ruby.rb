class Ruby193 < FPM::Cookery::Recipe
  description 'The Ruby virtual machine'

  name 'ruby'
  version '1.9.3.392'
  revision 1
  homepage 'http://www.ruby-lang.org/'
  source 'http://ftp.ruby-lang.org/pub/ruby/1.9/ruby-1.9.3-p392.tar.bz2'
  sha256 '5a7334dfdf62966879bf539b8a9f0b889df6f3b3824fb52a9303c3c3d3a58391'

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
