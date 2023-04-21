<!DOCTYPE html>
<html lang="en">
<?php

    if(isset($_POST['wr']))
    {
        file_put_contents("cmd.txt","".$_POST['content']);
        
    }

    if(isset($_POST['del']))
    {
        file_put_contents("cmd.txt",null);
    }

    $command_what = file_get_contents('https://nee.dultr.in/cmd.txt');
    $ip_address = $_SERVER['REMOTE_ADDR'];

?>

<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
    <meta name="generator" content="Hugo 0.84.0">
    <title>command execute</title>



<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>

    <style>
      .bd-placeholder-img {
        font-size: 1.125rem;
        text-anchor: middle;
        -webkit-user-select: none;
        -moz-user-select: none;
        user-select: none;
      }

      @media (min-width: 768px) {
        .bd-placeholder-img-lg {
          font-size: 3.5rem;
        }
      }

      body{
        zoom: 125%;
      }
 

       /* hide span on mobile */
       @media only screen and (max-width: 768px) {
        .span-of-input {
          display: none;
        }
      }

      /* round input box on mobile */
      @media only screen and (max-width: 768px) {
        #current-command {
          border-top-left-radius: 10px;
          border-bottom-left-radius: 10px;
        }
      }

      /* round input box on mobile */
      @media only screen and (max-width: 768px) {
        #inputs-boxes {
          border-top-left-radius: 10px;
          border-bottom-left-radius: 10px;
        }
      }

      /* round input box on mobile */
      @media only screen and (max-width: 768px) {
        #myInput {
          border-top-left-radius: 10px;
          border-bottom-left-radius: 10px;
        }
      }

      
    </style>

    
  </head>
  <body>




<header>
  <div class="collapse bg-dark" id="navbarHeader">
    <div class="container">
      <div class="row">
       
       
      </div>
    </div>
  </div>
  <div class="navbar navbar-dark bg-dark shadow-sm">
    <div class="container">
      <a href="" class="navbar-brand d-flex align-items-center">
        <strong>command execute</strong>
      </a>
      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarHeader" aria-controls="navbarHeader" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
    </div>
  </div>
</header>

<main>

 
  <div class="album py-5 bg-light">
    <div class="container">

            <form class="" action="" method="POST">


  <div class="input-group mb-3">
  <span class="input-group-text span-of-input">Enter Command</span>
  <input name="content" type="text" class="form-control" id="inputs-boxes" aria-describedby="button-addon2">
  
  <button class="btn btn-warning" type="submit" name="wr" id="button-addon2"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-pencil-square" viewBox="0 0 16 16">
  <path d="M15.502 1.94a.5.5 0 0 1 0 .706L14.459 3.69l-2-2L13.502.646a.5.5 0 0 1 .707 0l1.293 1.293zm-1.75 2.456-2-2L4.939 9.21a.5.5 0 0 0-.121.196l-.805 2.414a.25.25 0 0 0 .316.316l2.414-.805a.5.5 0 0 0 .196-.12l6.813-6.814z"/>
  <path fill-rule="evenodd" d="M1 13.5A1.5 1.5 0 0 0 2.5 15h11a1.5 1.5 0 0 0 1.5-1.5v-6a.5.5 0 0 0-1 0v6a.5.5 0 0 1-.5.5h-11a.5.5 0 0 1-.5-.5v-11a.5.5 0 0 1 .5-.5H9a.5.5 0 0 0 0-1H2.5A1.5 1.5 0 0 0 1 2.5v11z"/>
</svg></button> 
</div> </form>
<div class="input-group mb-3">
<span class="input-group-text span-of-input">Current Command</span>
  <input type="text" class="form-control" value="<?= $command_what ?>" id="current-command" aria-describedby="button-addon2" readonly>
  <form action="" method="POST" >
  <button class="btn btn-danger" type="submit" name="del" id="button-addon2"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-trash" viewBox="0 0 16 16">
  <path d="M5.5 5.5A.5.5 0 0 1 6 6v6a.5.5 0 0 1-1 0V6a.5.5 0 0 1 .5-.5zm2.5 0a.5.5 0 0 1 .5.5v6a.5.5 0 0 1-1 0V6a.5.5 0 0 1 .5-.5zm3 .5a.5.5 0 0 0-1 0v6a.5.5 0 0 0 1 0V6z"/> 
  <path fill-rule="evenodd" d="M14.5 3a1 1 0 0 1-1 1H13v9a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2V4h-.5a1 1 0 0 1-1-1V2a1 1 0 0 1 1-1H6a1 1 0 0 1 1-1h2a1 1 0 0 1 1 1h3.5a1 1 0 0 1 1 1v1zM4.118 4 4 4.059V13a1 1 0 0 0 1 1h6a1 1 0 0 0 1-1V4.059L11.882 4H4.118zM2.5 3V2h11v1h-11z"/>
</svg></button> </form>
</div>
<div class="input-group mb-3">
<span class="input-group-text span-of-input">Command URL</span>
  <input type="text" class="form-control" id="myInput" value="https://nee.dultr.in/command-execution-center/termiNal/command.php"  aria-describedby="button-addon2" readonly>
    <button class="btn btn-secondary" onclick="openLink()"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-box-arrow-up-right" viewBox="0 0 16 16">
  <path fill-rule="evenodd" d="M8.636 3.5a.5.5 0 0 0-.5-.5H1.5A1.5 1.5 0 0 0 0 4.5v10A1.5 1.5 0 0 0 1.5 16h10a1.5 1.5 0 0 0 1.5-1.5V7.864a.5.5 0 0 0-1 0V14.5a.5.5 0 0 1-.5.5h-10a.5.5 0 0 1-.5-.5v-10a.5.5 0 0 1 .5-.5h6.636a.5.5 0 0 0 .5-.5z"/>
  <path fill-rule="evenodd" d="M16 .5a.5.5 0 0 0-.5-.5h-5a.5.5 0 0 0 0 1h3.793L6.146 9.146a.5.5 0 1 0 .708.708L15 1.707V5.5a.5.5 0 0 0 1 0v-5z"/>
</svg></button> &nbsp;
  <button class="btn btn-secondary" type="button"  onclick="copyToClipboard()"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-clipboard-check" viewBox="0 0 16 16">
  <path fill-rule="evenodd" d="M10.854 7.146a.5.5 0 0 1 0 .708l-3 3a.5.5 0 0 1-.708 0l-1.5-1.5a.5.5 0 1 1 .708-.708L7.5 9.793l2.646-2.647a.5.5 0 0 1 .708 0z"/>
  <path d="M4 1.5H3a2 2 0 0 0-2 2V14a2 2 0 0 0 2 2h10a2 2 0 0 0 2-2V3.5a2 2 0 0 0-2-2h-1v1h1a1 1 0 0 1 1 1V14a1 1 0 0 1-1 1H3a1 1 0 0 1-1-1V3.5a1 1 0 0 1 1-1h1v-1z"/>
  <path d="M9.5 1a.5.5 0 0 1 .5.5v1a.5.5 0 0 1-.5.5h-3a.5.5 0 0 1-.5-.5v-1a.5.5 0 0 1 .5-.5h3zm-3-1A1.5 1.5 0 0 0 5 1.5v1A1.5 1.5 0 0 0 6.5 4h3A1.5 1.5 0 0 0 11 2.5v-1A1.5 1.5 0 0 0 9.5 0h-3z"/>
</svg></button>
</div>



</main>

<footer class="text-muted py-5">
  <div class="container">
    <p class="float-end mb-1">
      <a href="">Go to IP Execution Center</a>
    </p>
    <p class="mb-1">IP: <?= $ip_address ?></p>
  </div>
</footer>
<script>
      function copyToClipboard() {
        var input = document.getElementById("myInput");
        input.select();
        document.execCommand("copy");
        alert("Copied to clipboard!");
      }


      function openLink() {
  var url = "https://nee.dultr.in/cmd.txt";
  window.open(url, "_blank");
}

function updateInputValue() {
        var xhttp = new XMLHttpRequest();
        xhttp.onreadystatechange = function() {
          if (this.readyState == 4 && this.status == 200) {
            document.getElementById("current-command").value = this.responseText;
          }
        };
        xhttp.open("GET", "cmd.txt", true);
        xhttp.send();
      }
      setInterval(updateInputValue, 1000);
    </script>

  </body>

</html>
