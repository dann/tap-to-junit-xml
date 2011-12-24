sub readme_from {
    warn
        "You need to install Module::Install::ReadmeFromPod to generate README";
}

sub use_test_base {
    warn "You need to install Test::Base to run make test from git clone";
}

sub author_requires {
    warn
        "You need to install Module::Install::AuthorRequires to install modules author requires";
}
sub author_tests        { }
sub auto_set_repository { }

use inc::Module::Install;

name 'App-TapToJUnit';
all_from 'lib/App/TapToJUnit.pm';

requires(
    'Getopt::Long'   => 0,
    'Pod::Usage'     => 0,
    'TAP::Parser'    => 0,
    'Time::HiRes'    => 0,
    'XML::Generator' => 0,
);

install_script('bin/tap-to-junit-xml');
test_requires( 'Test::More' => 0.88, );
use_test_base;
auto_include;
WriteAll;
