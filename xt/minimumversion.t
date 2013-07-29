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
	'Perl::MinimumVersion' => 1.32,
	'Test::MinimumVersion' => 0.10108,
};

all_minimum_version_from_metayml_ok();

done_testing();

__END__
