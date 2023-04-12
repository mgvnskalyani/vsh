<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<style>
body {

  background-image: url('https://media-exp1.licdn.com/dms/image/C5612AQGK7eiGfGBUgw/article-cover_image-shrink_600_2000/0/1609270790603?e=2147483647&v=beta&t=dih_m4mL3QIyr-Y3jm8McSh5nZu4qpyJYRfXAAnxs8Q');
  background-repeat: no-repeat;
   background-attachment: fixed;
  background-size: cover;
}
input[type=text],input[type=password],
select,input[type=date]
{
  width: 70%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid black;
  border-radius: 10px;
  box-sizing: border-box;
}

.container{

width: 30%;
position: absolute; 
top: 140px;
left:20px;
background-color:#E1E2DA  ;
height: 40%;


  padding: 12px 10px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid black;
  border-radius: 15px; 
}

#b1{

border: none;
padding: 10px 24px;
color: black;
background-color: #547BAD;
border:1px solid black;
border-radius:3px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 4px 2px;
}
#b1:focus{
background-color: white;
color:black;
}

</style>
<meta charset="UTF-8">
<title  >Admin Login</title>
</head>
<body>
<br>
<br>
<br>
<h1>
<p align=center; style= "color:white"  > &nbsp;  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Service</p>
</h1>
<div class=container>
<center>
<h2 style= "color:black; font-size:30px;">Admin Login</h2>
</center>
<div>
  <table>
     <td><tr>User Name: &nbsp;<input type="text" placeholder="FirstName" id="name"/></tr></td>
     <br>
     <td><tr>Password : &nbsp;&nbsp;&nbsp;<input type="password" placeholder="Password" id="password"/></tr></td>
     <br>
  <center>
     <td><tr> &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<button onclick="Login()" id="b1">Login</button> </tr></td>
     <br> 
 
    <td><tr>&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    &nbsp;&nbsp;&nbsp;Need an account? <form action="AdminRegister.jsp"><a href="AdminRegister.jsp">Register</a></form></tr></td>
    
     <td><tr><p id="error"></p></tr></td>
     </center>
  </table>
</div>
</div>
</center>
</body>

<script type="text/javascript">
function Login(){
  var xhtml = new XMLHttpRequest();
  var name = document.getElementById("name");
  var password=document.getElementById("password");
  var url="http://localhost:8080/Admin/AdminLogin/"+name.value+"/"+password.value;
  xhtml.open("GET", url, true);
  xhtml.setRequestHeader('Content-Type','application/json');
  xhtml.send();
  var error=document.getElementById("error");
  xhtml.onreadystatechange = function()
  {
    if(this.readyState == 4 && this.status == 200)
    {
      if(this.responseText=="Successfully logged in"){
        error.innerHTML=this.responseText;
        window.location.replace("AdminHome.jsp");
      }
      else{
        error.innerHTML=this.responseText;
      }
}
}
  
}
</script>
</html>