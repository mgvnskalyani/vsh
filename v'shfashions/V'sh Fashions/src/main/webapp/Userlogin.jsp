<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<style>
body {

  background-image: url('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTqZBF6h9rTIVc7FRJvAlqtGVQlJigbQhmAydkf74CItms81sEQTMHcDknkbbqgoh80GF0&usqp=CAU');
  background-repeat: no-repeat;
   background-attachment: fixed;
  background-size: cover;
}
input[type=text],input[type=password],
select,input[type=date]
{
  width: 55%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid black;
  border-radius: 10px;
  box-sizing: border-box;
}
.container{
width: 23%;
position: absolute; 
top: 100px;
left:600px;
background-color:##B0E0E6 ; 


  padding: 12px 10px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid black;
  border-radius: 15px; 
}
#b1{
border: none;
padding: 10px 24px;
color: white;
background-color:#7B68EE ;
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
<title>Customer Login</title>
</head>
<body>
<h1 align=center>Service Web Portal</h1>
<div class=container>
<center>
<h3 style= "color:black; font-size:30px;">Customer Login</h3>
</center>
<div>
  <table>
     <td><tr>User Name : <input type="text" placeholder="FirstName" id="name"/></tr></td>
     <br>
     <td><tr>Password : &nbsp;&nbsp;&nbsp;<input type="password" placeholder="Password" id="password"/></tr></td>
     <br>
     <br>
     <td><tr>&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
    <button onclick="Login()" id="b1">Login</button></tr></td>
     <br>  <br>
   <td><tr>&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   &nbsp;&nbsp;&nbsp;
   Need an account? <form action="UserRegister.jsp"><a href="UserRegister.jsp">Register</a></form></tr></td>
    
     <td><tr><p id="error"></p></tr></td>
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
  var url="http://localhost:8080/api/UserLogin/"+name.value+"/"+password.value;
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
        window.location.replace("UserHome.jsp");
      }
      else{
        error.innerHTML=this.responseText;
      }
}
}
  
}
</script>
</html>