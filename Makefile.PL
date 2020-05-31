use strict;
use warnings;
use ExtUtils::MakeMaker;

WriteMakefile(
	      NAME         => 'FRDCSA::BehaviorTree',
	      AUTHOR       => q{Andrew John Dougherty <adougher9@gmail.com>},
	      VERSION_FROM => 'lib/FRDCSA/BehaviorTree/BehaviorTree.pm',
	      ABSTRACT     => 'A transliteration (and perhaps extension) of the Behavior Tree Starter Kit (BTSK) to Perl',
	      ( $ExtUtils::MakeMaker::VERSION >= 6.3002
		? ( 'LICENSE' => 'perl' )
		: () ),
	      PL_FILES  => {},
	      PREREQ_PM => {},
	      TEST_REQUIRES => {
				'Test::More'    => 1.001014,
			       },
);
