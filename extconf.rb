require 'mkmf'

if $DEBUG
  $CFLAGS << ' -std=c89 -pedantic -Wall -Wno-long-long'
  $defs << ' -Dinline=__inline'
else
  $defs << '-DNDEBUG'
end

have_func('rb_enumeratorize')
create_makefile('rbtree')
