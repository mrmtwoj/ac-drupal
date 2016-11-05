#start validator checker
dprint("Checking .htaccess");

$source=$ua->get("$target/.htaccess")->decoded_content;

if($source =~ m/access forbidden/i){
    tprint(".htaccess is found \nBut Not Ready File \npath : $target/.htaccess");
}else{
    fprint(".htaccess is not found");
}
#end validator checker
