
dprint("Exploit DB Cehck");
use Digest::MD5::File qw(url_md5_hex);
my $md5 = Digest::MD5->new;
    $md5->addurl("$target/drupal/misc/drupal.js"); # MD5 Find Version Drupal
    my $digest = $md5->hexdigest;
  print"$digest\n\n";
  print"$target\n\n";
open(my $DB,"drupalexploit.txt");
while( my $row = <$DB>)  {
    chomp $row;
    my $fv=substr($row, 0, index($row, '|'));
    my $fd=substr($row, index($row, '|')+1, 1000);

    if(($digest =~ m/$fv/i) and (length($digest)==length($fv))){
        $fd =~ s/\$target/$target/g;
        $fd =~ s/\\n/\r\n/g;
        $fd =~ s/\|/\r\n\r\n[++] /g;
        print("$fd\n\n");
    }
}
close $DB;


