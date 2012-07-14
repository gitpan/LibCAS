use 5.006;
use strict;
use warnings;
use ExtUtils::MakeMaker;

WriteMakefile(
    NAME          => 'LibCAS',
    AUTHOR        => q{"Michael Morris" <"michael.m.morris@gmail.com">},
    VERSION_FROM  => 'lib/LibCAS/Client.pm',
    ABSTRACT      => 'A library for interacting with Jasig\'s CAS server',
    ($ExtUtils::MakeMaker::VERSION >= 6.3002
      ? ('LICENSE'=> 'perl')
      : ()),
    PL_FILES  => {},
    PREREQ_PM => {
        'Test::More' => 0,
        'Apache2::Const' => 0,
        'Apache2::Log'   => 0,
        'Apache2::RequestRec' => 0,
        'Apache2::URI' => 0,
        'APR::Table'   => 0,
        'Data::Dumper' => 0,
        'HTTP::Cookies'  => 0,
        'LWP::UserAgent' => 0,
        'URI' => 0,
        'XML::LibXML' => 0
    },
    dist   => { COMPRESS => 'gzip -9f', SUFFIX => 'gz', },
    clean  => { FILES => 'LibCAS-*' },
);
