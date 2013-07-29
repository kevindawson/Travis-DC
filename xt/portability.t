use strict;
use warnings FATAL => 'all';

use English qw( -no_match_vars );
local $OUTPUT_AUTOFLUSH = 1;

use Test::More;
use Test::Requires { 'Test::Portability::Files' => 0.06 };

options( test_one_dot => 0 );
run_tests();

done_testing();

__END__
