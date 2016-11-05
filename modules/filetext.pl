#start find password
$btf=0;
dprint("Finding common password files name");
@backups = ('password.zip','passwords.zip','pass.zip','passwordnew.zip','password.tar','password.tar.gz','passwords.tar.gz','PassWord.zip','PASSWORD.zip','pass.txt','password.txt','password.sql','database.sql','PASSWORD.txt');
foreach $back(@backups){
    if (($content_type, $doc_length, $mod_time, $expires, $server) =head("$target/$back")){
        if($content_type !~ m/text\/html/i){
            tprint("Backup file is found \nPath : $target/$back\n");
           $btf=1;
        }
    }
}
if($btf==0){
    fprint("Backup files are not found");
}
#end find password
