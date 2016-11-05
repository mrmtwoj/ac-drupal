#!/usr/bin/perl
#
#            --------------------------------------------------
#                              AC-Drupal (2016)
#            --------------------------------------------------
#
$author="Mohammad Javad Joshani Disfani";$author.="";
$version="1.0.0";$version.="";
$codename="AC-Drupal";$codename.="";
$update="2016/11/05";$update.="";
$setting="Error";$setting.="";

system(($^O eq 'MSWin32') ? 'cls' : 'clear');
use Term::ANSIColor;

$SIG{INT} = \&interrupt;
sub interrupt {
    fprint("\nShutting Down , Interrupt by user");
    print color("reset");
    exit;
}
do "core/header.pl";
do "core/main.pl";
do "core/drupalch.pl";
do "modules/changelog.pl";
do "modules/dirlisting.pl";
do "modules/missconfig.pl";
do "modules/validator.pl";
do "modules/robots.pl";
do "modules/phpmyadmin.pl";
do "modules/configfinder.pl";
do "modules/backupfinder.pl";
do "modules/filetext.pl";
do "modules/errfinder.pl";

our $target="$target/";
if($target =~ /http:\/\/(.*?)\//){our $li=$1;}
if($target =~ /https:\/\/(.*?)\//){our $li=$1;}
open(my $fh, '>', "logs/$1.txt");
our $log="$log";
print $fh "$log";
close $fh;

print color("yellow");
print "\n\nYour Report : logs/$1.txt\n\n";

print color("reset");

