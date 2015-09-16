require 'mkmf'
require 'rbconfig'

$CFLAGS += " -Wall "

# On some Solaris systems ruby reports linker flags that are not supported by
# the linker. Fix this up.
if RbConfig::CONFIG['host_os'] =~ /solaris|sunos/i
  $LDFLAGS.gsub!('-Wl,-E', '-Wl,-dy')
end

create_makefile('lz4ruby')

