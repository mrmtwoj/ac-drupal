#start settings.php.x check
$ctf=0;
dprint("Checking settings.php.x for disclure config file");
@configs = ('settings.php~','settings.phpp.new','settings.php.new~','settings.php.old','settings.php.old~','settings.php.bak','settings.php.bak','settings.php.bkp','settings.php.txt','settings.txt','settings - Copy.php');
foreach $config(@configs){
    if (($content_type, $doc_length, $mod_time, $expires, $server) =head("$target/sites/default/$config")){
        if($content_type !~ m/text\/html/i){
            tprint("Backup file is found \nPath : $target/sites/default/$config\n");
           $ctf=1;
        }
    }
}
#end settings.php.x check
