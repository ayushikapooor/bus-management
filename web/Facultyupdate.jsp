<html>
<head>
  <meta name="viewport" content="width=device-width, initial-scale=1 , user-scale=0">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <title>Chitkara University</title>
  <link rel="stylesheet" type="text/css" href="admin.css">
  <style>
      select {
    width: 100%;
    padding: 7px 10px;
    margin: 8px 0;
    display: inline-block;
    border: 1px solid #ccc;
    border-radius: 5px;
    box-sizing: border-box;
}
.body1{
background-image:url("bus.jpg");
height:100vh;
background-size:cover;
background-position:centre;
background-repeat:no repeat;
overflow:hidden;
}

.login-box {
    position: relative;
    margin: 5% auto;
    height: 400px;
    width: 600px;
    background: #fff;
    box-shadow: 0 2px 4px rgba(0, 0, 0, 0.6);
    opacity: 0.8;
  /*filter: alpha(opacity=10);*/ /* For IE8 and earlier */
  font-family: sans-serif;
    font-weight: 400;
    font-size: 15px;
    transition: 0.2s ease;
}
      </style>
</head>
<body>
                <ul class="main-nav">
                    <li><a href="facultyroute.jsp">Add Route</a></li>
                    <li><a href="Facultydelete.jsp">Del Route</a></li>
                    <li><a href="Facultyupdate.jsp">Update Route</a></li>
                </ul>

    <div class="body1">
<div class="col-sm-offset-4 col-sm-4 " style="padding-top:5%;"> 
        <div class="login-box">
        <div style="padding:40px 50px;">
            <form method="post" name="MyForm" action="" autocomplete="off">
            
             <div class="form-group">
             <label for="number"><span class="glyphicon glyphicon-user"></span> Bus No.</label>
              <input type="text" class="form-control" id="number" name ="username" placeholder="Enter username">
            </div>
            
              <div class="form-group">
             <label for="routename"><span class="glyphicon glyphicon-user"></span> Route name.</label>
              <input type="text" class="form-control" id="routename" name ="username" placeholder="Enter username">
             
            
            </div>

		    </div>
            <center> <button type="submit" class="btn btn-danger" onclick="myValidation()"> Add</button></center>
          </form>
        </div>
      </div>
        
    </div>
	</div>

	<script>
    function myFunction() {
    var x = document.getElementById("myInput");
    if (x.type === "password") {
        x.type = "text";
    } else {
        x.type = "password";
    }
    
}
function myValidation(){
var element1=document.forms["MyForm"]["username"].value;
var element2=document.forms["MyForm"]["password"].value;
var flag = true;
if(element1==""){
alert("Name cannot be empty");
flag = false;
}
if(element2==""){
alert("password cannot be empty");
flag = false;
}
return flag;
}
</script>
    </body>
	</html>