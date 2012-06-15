use strict;
use warnings;
use inc::Module::Install;
use Module::Install::AuthorRequires;
use Module::Install::AuthorTests;
use Module::Install::Authority;

requires 'namespace::autoclean';
requires 'Moose';
requires 'Message::Passing';
requires 'Mac::Growl';

test_requires 'Test::More' => '0.88';

WriteAll;

