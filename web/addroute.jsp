<%@page import="java.util.Iterator"%>
<%@page import="org.hibernate.Query"%>
<%@page import="org.hibernate.cfg.Configuration"%>
<%@page import="Model.schedule"%>
<%@page import="org.hibernate.Session"%>
<%@page import="org.hibernate.SessionFactory"%>
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
    height: 350px;
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
h1{
  font-size: 30px;
  color: #ff9900;
  text-transform: uppercase;
  font-weight: 300;
  text-align: center;
  margin-bottom: 15px;
}
table{
  width:100%;
/*  table-layout: fixed;*/
}
.tbl-header{
  background-color: rgba(0,0,0,0.9);
  overflow-x:auto;
  margin-top: 0px;
  border: 1px solid rgba(0,0,0,0.9);
 }
.tbl-content{
 /*height:300px;*/
  overflow-x:auto;
  margin-top: 0px;
  border: 1px solid rgba(0,0,0,0.9);
}
th{
  padding: 12px 12px;
  text-align: left;
  font-weight: 500;
  font-size: 12px;
  color: #ff9900;
  text-transform: uppercase;
}
td{
  background-color: rgba(0,0,0,0.7);
  padding: 15px;
  text-align:left ;
  vertical-align:middle;
  font-weight: 300;
  font-size: 12px;
  color: #ff9900;
  border-bottom: solid 1px rgba(0,0,0,0.7);
}
.butn
  {
    width:20%;
    margin:auto;
    margin-left:435px;
    box-sizing:border-box;
    padding: 10px 0px;
    background-color: white;
    opacity:0.7;
    outline:none;
    border:none;
    border-bottom:1px  #ff9900;
    color:#ff9900;
    border-radius:20px;
    font-size:15px;
    height:35px;

  }
  .butn:hover
{
  background:White;
  color:#ff9900;
  cursor:pointer;
}
.demo
{
  display:flex;
      background-color: black;
      padding:20px;
            flex-wrap:wrap;
      flex-direction:row;
      justify-content: space-around;
      width:83%;
      margin-top: 50px;
     
     margin:auto;
     box-sizing: border-box;	
}
 .demo input[type=text]
    {
      margin-top:3px;
      border-radius: 20px;
      width:200px;
      height:30px;
      
          }
section{
  margin: 50px;
}

      </style>
</head>
<body>
                <ul class="main-nav">
                    <li><a href="register.jsp">Register</a></li>
                    
                    <li><a href="addroute.jsp">Add Route</a></li>
                    <li><a href="delroute.jsp">Del Route</a></li>
                    
                </ul>
    <section>
  <!--for demo wrap-->
  <h1>Route details</h1>
  <div class="tbl-header">
    <table>
    <thead>
    <tr>      
    <th>BUS NUMBER</th>
    <th>ROUTE</th>
    
    </tr>
    </thead>
      <tbody>
         <% 
                    int busn;
                    String busr;
                    Configuration cf = null;
                    SessionFactory sf = null;
                    Session s = null;
                    schedule sch = null;
                    try{
                        cf = new Configuration();
                        cf.configure();
                        sf = cf.buildSessionFactory();
                        s = sf.openSession();
                        Query q = s.createQuery("from schedule");
                        Iterator it = q.iterate();
                        while (it.hasNext()){
                            
                            sch = (schedule)it.next();
                            busn = sch.getBusn();
                           busr = sch.getBusr();
                   
                            System.out.println(busn);
                            
                %>        
                
			<tr>
                            <td><%=busn%></td>
                            <td><%=busr%></td>
                           
			</tr>
                        <%
                            }
                    }catch(Exception e){
                        e.printStackTrace();
                    }  
                %>      
      </tbody>
    </table>
  </div>
</section>
           

    <div class="body1">
<div class="col-sm-offset-4 col-sm-4 " style="padding-top:5%;"> 
        <div class="login-box">
        <div style="padding:40px 50px;">
            <form method="post" name="MyForm" action="Add" autocomplete="off">
            
             <div class="form-group">
             <label for="number"><span class="glyphicon glyphicon-user"></span> Bus No.</label>
              <input type="text" class="form-control" id="number" name ="busn" placeholder="Enter bus number">
            </div>
            
              <div class="form-group">
             <label for="routename"><span class="glyphicon glyphicon-user"></span> Route Name</label>
              <input type="text" class="form-control" id="routename" name ="busr" placeholder="Enter route">
             
            
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