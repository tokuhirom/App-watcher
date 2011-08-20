use inc::Module::Install;
use Module::Install::AuthorTests;

name 'App-watcher';
all_from 'bin/watcher';

requires 'Filesys::Notify::Simple';

recommends 'Linux::Inotify2' if $^O eq 'linux';

install_script 'bin/watcher';

tests 't/*.t t/*/*.t t/*/*/*.t t/*/*/*/*.t';
test_requires 'Test::More' => 0.96; # done_testing, subtest
author_tests('xt');

WriteAll;
