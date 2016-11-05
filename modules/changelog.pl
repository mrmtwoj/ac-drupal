#start CHANGELOG
dprint("checking Changelog.txt");
$response=$ua->get("$target/CHANGELOG.txt");
my $headers  = $response->headers();
my $content_type =$headers->content_type();
$source=$response->decoded_content;
if ($response->status_line =~ /200/g and $content_type =~ /text/g and $source =~ /Drupal/g) {
	tprint("Found Changelog.txt File \npath : $target/CHANGELOG.txt\n");
}
else{
   fprint("Changelog not found\n");
}
#end CHANGELOG
