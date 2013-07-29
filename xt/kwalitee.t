use strict;
use warnings FATAL => 'all';

BEGIN {
	unless ( $ENV{RELEASE_TESTING} ) {
		require Test::More;
		Test::More::plan( skip_all => 'these tests are for release candidate testing' );
	}
}

use English qw( -no_match_vars );
local $OUTPUT_AUTOFLUSH = 1;

use Test::More;

my $mod_ver = 1.05;
eval "require Test::Kwalitee";
# use Test::Requires { 'Test::Kwalitee' => '1.05' };
plan skip_all => "Test::Kwalitee $mod_ver required for testing" if $EVAL_ERROR;

Test::Kwalitee->import();

# done_testing();

__END__
