use Test::Dependencies
    exclude => [qw/Test::Dependencies Test::Base Test::Perl::Critic App::TapToJUnit/],
    style   => 'light';
ok_dependencies();
