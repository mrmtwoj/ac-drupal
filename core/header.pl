#!/usr/bin/perl

use Term::ANSIColor;

if(!defined $ARGV[0]){
    
    print color("YELLOW");
    print q{
                     _                 
  __ _   ___  _   _ | |__    ___  _ __ 
 / _` | / __|| | | || '_ \  / _ \| '__|
| (_| || (__ | |_| || |_) ||  __/| |   
 \__,_| \___| \__, ||_.__/  \___||_|   
              |___/                       

    };
    print color("reset");
    print "
    ". color("BLUE") . "Drupal Scanner Exploit". color("reset") ."
    Version       : ". color("yellow"). "$version". color("reset") . " 
    Update Date   : ". color("red") . "$update". color("reset") . "
    Author        : ". color("yellow") . "Mr.Mtwoj". color("reset")."
    Website       : ". color("yellow") . "www.acyber.ir". color("reset")."
    Project name  : ". color("yellow") . "$codename". color("reset")."
    Setting       : ". color("yellow") . "$setting". color("reset");
    print color("green");
    printf "\n\n   Usage: \n \t$0 <target>\n";
    printf "\t$0 http://target.ir/Drupal\n\n";
    printf "\n\n   Options : \n";
    printf "\t$0 --help\n\n";
    print color("reset");
    exit(1);
}
if(($ARGV[0] =~ m/--help/i))
{
	printf "   Usage: \n \t$0 <Target>\n";
	printf "\t$0 http://target.ir/Drupal\n\n";
	printf "   Info Script Pentest:\n \t$0 --info\n\n";
        printf "   Check for Upgrade : \n \t$0 --upgrade\n\n\n";
	print color("reset");
	exit(1);
}elsif($ARGV[0] =~ m/--info/i)
{
	print color("cyan");
	printf "
   Author      :   $author
   Linkedin    :   https://ir.linkedin.com/in/mrmtwoj
   E-Mail      :   mr.mtwoj@gmail.com
   Website     :   www.acyber.ir
   Twitter     :   @mrmtwoj
   Github      :   https://github.com/mrmtwoj/ac-drupal
    \n\n";
	print color("reset");
	exit(1);
}elsif($ARGV[0] =~ m/--upgrade/i)
{
	printf "Please Wait ... \n\n\n\n";
    do "core/upgrade.pl";
	print color("reset");
	exit(1);
}
