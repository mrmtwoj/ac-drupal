#!/usr/bin/perl

use utf8;
use open ':std', ':encoding(UTF-8)';
use LWP::UserAgent;
use LWP::Simple;
use Term::ANSIColor;
print color("blue");
#Start Hader Browser
$ua = LWP::UserAgent->new(ssl_opts => { verify_hostname => 0 });
$ua->protocols_allowed( [ 'http','https'] );
$ua->timeout(210);
$ua->agent('Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.125 Safari/537');#Scan Site by Agent header browser !
#$ua->Accept-Language('en-US');

chomp($target=$ARGV[0]);

if($target !~ /http/) { $target = "http://$target"; };

our $log="";
sub dprint{
    my ($in) = @_;
    $in="\n[+] $in\n";
    $log .= $in;
    print color("bold YELLOW");
    print "$in";
}
sub tprint{
    my ($in) = @_;
    $in="[++] $in\n";
    $log .= $in;
    print color("red");
    print "$in";
    print color("blue");
}
sub fprint{
    my ($in) = @_;
    $in="[++] $in\n";
    $log .= $in;
    print color("Green");
    print "$in";
    print color("blue");
}

print $log;
