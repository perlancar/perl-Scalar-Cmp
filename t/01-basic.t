#!perl

use 5.010;
use strict;
use warnings;
use Test::More 0.98;

use Scalar::Cmp qw(numeq streq);

is_deeply(numeq(undef, undef), undef);
is_deeply(numeq(undef, 1)    , undef);
is_deeply(numeq(1, undef)    , undef);
is_deeply(numeq(1, 1)        , 1);
is_deeply(numeq(1, 2)        , 0);

is_deeply(streq(undef, undef), undef);
is_deeply(streq(undef, 1)    , undef);
is_deeply(streq(1, undef)    , undef);
is_deeply(streq(1, 1)        , 1);
is_deeply(streq(1, 2)        , 0);
is_deeply(streq("a", "a")    , 1);
is_deeply(streq("a", "b")    , 0);

DONE_TESTING:
done_testing;
