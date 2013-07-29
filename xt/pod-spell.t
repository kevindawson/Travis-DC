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
use Test::Requires { 'Test::Spelling' => 0.18 };

add_stopwords(
	qw(
		API
		CPAN
		STDIN
		STDOUT
		STDERR
		JSON
		MetaCPAN
		AnnoCPAN
		YAML
		Fayland
		IDE
		SpellCheck
		Quelin
		Zawawi
		utf
		svn
		git
		ascii
		)
);
all_pod_files_spelling_ok();

done_testing();

__END__
