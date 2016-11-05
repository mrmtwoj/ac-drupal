#!/usr/bin/perl
print "\n[+] Updating ...\n";
$x=`pwd`;
chomp($x);
`cd /tmp;git clone https://github.com/mrmtwoj/ac-drupal.git`;
`cp -R /tmp/ac-drupal/ \"$x\"`;
`rm -rf /tmp/ac-drupal/`;


print "[+] Update was completed successfully\n";
