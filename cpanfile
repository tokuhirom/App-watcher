requires 'Filesys::Notify::Simple';
requires 'Linux::Inotify2';
requires 'perl', '5.008008';

on build => sub {
    requires 'Test::More', '0.98';
};
