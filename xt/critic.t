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
use Test::Requires {
	'Perl::Critic'       => 1.118,
	'Test::Perl::Critic' => 1.02,
};

Test::Perl::Critic->import(
	-severity => 4,
	-verbose  => 4,
	-exclude  => [ 'RequireRcsKeywords', 'constant' ],
);

all_critic_ok();

done_testing();

__END__
