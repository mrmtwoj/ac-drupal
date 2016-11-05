#start Version finder and javascript file (drupal.js => MD5)

dprint("Pending $target ...\n\n");
$source=$ua->get("$target/")->decoded_content;
if (($source =~ m/modules/i || $source =~ m/misc/i || $source =~ m/admin/i)) #Find Drupal Cms and Run Scanner script
{print "";}else{
    print color("green");
    print "[++] The target is alive!\n\n";
    print "[++] But is not running on Drupal.you want to continue? [y/N] ";
    $inp=<STDIN>;
    if($inp =~ /N/g || $inp =~ /n/g){
        print color("reset");
        exit 0;
    }
}
dprint("Exploit DB Cehck");
use Digest::MD5::File qw(url_md5_hex);
my $md5 = Digest::MD5->new;
    $md5->addurl("$target/misc/drupal.js"); # MD5 Find Version Drupal
    my $digest = $md5->hexdigest;
open(my $DB,"drupalexploit.txt");#exploit db (www.exploit-db.com)
while( my $row = <$DB>)  {
    chomp $row;
    my $fv=substr($row, 0, index($row, '|'));
    my $fd=substr($row, index($row, '|')+1, 1000);

    if(($digest =~ m/$fv/i) and (length($digest)==length($fv))){
        $fd =~ s/\$target/$target/g;
        $fd =~ s/\\n/\r\n/g;
        $fd =~ s/\|/\r\n\r\n[++] /g;
        fprint("$fd\n\n");
    }
}
close $DB;
