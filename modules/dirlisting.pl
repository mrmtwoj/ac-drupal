#start license
$response=$ua->get("$target/");
$source=$response->decoded_content;
if ($source =~ /<title>Index of/g) {
	tprint("attachment directory has directory listing : \npath: $target/");
}
#end license
