<?php
   include('connection.php');
   echo$_POST['cname'];
   echo$_POST['contact'];
   echo$_POST['address'];
?>
<form action="insert.php"method="POST">
   Name:<input type="text"name="cname"><br><br>
   Contact:<input type="text"name="contact"><br><br>
   Address:<input type="text"name="address"><br><br>
     <input type="submit"value="submit">
</form>