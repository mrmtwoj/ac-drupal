#start phpmyadmin
dprint("phpmyadmin Checker");
$response = $ua->get("$target/phpmyadmin");
if ($response->status_line=~/200/g && $response->decoded_content =~ m/phpmyadmin/i){
    tprint("phpmyadmin run on the web site :)\npath : $target/phpmyadmin");
} else {
    fprint("phpmyadmin not found");
}
#end phpmyadmin
