<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<style>

.blink {
  animation: blink 1s steps(1, end) infinite;
}

@keyframes blink {
  0% {
    opacity: 1;
  }
  50% {
    opacity: 0;
  }
  100% {
    opacity: 1;
  }
}
body {

  background-image: url('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTqZBF6h9rTIVc7FRJvAlqtGVQlJigbQhmAydkf74CItms81sEQTMHcDknkbbqgoh80GF0&usqp=CAU');
  
  background-repeat: no-repeat;
   background-attachment: fixed;
  background-size: cover;
}
.button {
  background-color: green;
  border: none;
  color: white;
  padding: 15px 32px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 4px 2px;
  cursor: pointer;
}

input[type=text],input[type=password],
select,input[type=date]
{
color:green;
  width: 75%;
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
top: 75px;
left:550px;
background-color:##E1E2DA; 

  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid black;
  border-radius: 15px; 

}
label 
{
  padding: 12px 12px 12px 0;
  display: inline-block;
  font-weight: bold;
}


ul 
{
  list-style-type: none;
  margin: 0;
  padding: 0px;
  overflow: hidden;
  background-color: lightgreen;
}

li 
{
  float: left;
    border-right: 1px solid blue;
}

li a 
{
  display: block;
  color: black;
 font-size:20px;
  text-align: center;
  padding: 10px 20px;
  text-decoration: none;
}
.active
{
background-color: black;
color: white;
}
li a:hover {
  background-color: orange;
  color: white;
}
#b1{
border: none;
padding: 10px 24px;
color: white;
background-color:#80807D ;
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

<meta charset="ISO-8859-1">
<link rel="icon" type="image/x-icon" href="/images/favicon.ico">
<title>Customer Registration</title>
</head>

<body >

	<h3 align=center >Customer Registration</h3>
	<div class=container>
	<table style="width:100%">
		<tr>
			<td style="width:100px">First Name :</td><td> <input type="text" id="t1" onblur="return firstname()" /> </td>
		   
		</tr>
		<tr>
			<td>Last Name :</td><td> <input type="text" id="t2" onblur="return lastname()"/> </td>
		</tr>
		<tr>
			<td>Mobile No :</td><td> <input type="text" id="t3" onblur="return phno()"/> </td>
		</tr>
		<tr>
			<td>cause :</td><td> <input type="text" id="t6" onblur="return cause()"/> </td>
		</tr>
		<tr>
			<td>Address :</td><td> <input type="text" id="t7" onblur="return place()"/> </td>
		</tr>
		<tr>
			<td>Set Password :</td><td> <input type="password" id="t4" onblur="return pswd()"/> </td>
		</tr>
		<tr>
			<td></td><td> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   <button onclick="register()" id="b1">Register</button> </td>
		</tr>
		<tr>
			<td></td><td> <label id="lbl"></label> </td>
		</tr>
	</table>
	</div>
</body>

<script type="text/javascript">
function register() 
{

	var xhtml = new XMLHttpRequest();
	var url = "http://localhost:8080/api/registration";
	xhtml.open("POST", url, true);
	xhtml.setRequestHeader('Content-Type','application/json');
	
	xhtml.send(JSON.stringify({
		name : t1.value,
		password:t4.value,
		cause:t6.value,
		place:t7.value,
		mobile : t3.value,	
	}));

	
	xhtml.onreadystatechange = function()
	{
		if(this.readyState == 4 && this.status == 200)
		{
			var lbl = document.getElementById("lbl");
			if(this.responseText != null)
				window.location.replace("Userlogin.jsp");
			else
			lbl.innerHTML = this.responseText;
		}
	};  
	
}
	function firstname(){
	      var i1 = document.getElementById("t1");
	      //document.getElementById("not1!").innerHTML = i1.value.length;
	      if(i1.value=='' || i1.value.length>1 && i1.value.length <10){
	        document.getElementById("t1").style.border = "2px solid red";
	        document.getElementById("not").style.color = "red";
	        document.getElementById("l1").style.color = "red";
	        document.getElementById("not").innerHTML = "Enter name";
	        return false;
	      }
	      else{
	        document.getElementById("t1").style.border = "2px solid green";
	        document.getElementById("not").style.color = "green";
	        document.getElementById("l1").style.color = "green";
	        document.getElementById("not").innerHTML = "correct";
	        return true;
	      }
	    }
	function lastname(){
	      var i1 = document.getElementById("t2");
	      //document.getElementById("not1!").innerHTML = i1.value.length;
	      if(i1.value=='' || i1.value.length>1 && i1.value.length <10){
	        document.getElementById("t2").style.border = "2px solid red";
	        document.getElementById("not").style.color = "red";
	        document.getElementById("l1").style.color = "red";
	        document.getElementById("not").innerHTML = "Enter name";
	        return false;
	      }
	      else{
	        document.getElementById("t2").style.border = "2px solid green";
	        document.getElementById("not").style.color = "green";
	        document.getElementById("l1").style.color = "green";
	        document.getElementById("not").innerHTML = "correct";
	        return true;
	      }
	    }
	function phno(){
	      var i1 = document.getElementById("t3");
	      //document.getElementById("not1!").innerHTML = i1.value.length;
	      if(i1.value=='' || i1.value.length>1 && i1.value.length <10){
	        document.getElementById("t3").style.border = "2px solid red";
	        document.getElementById("not").style.color = "red";
	        document.getElementById("l1").style.color = "red";
	        document.getElementById("not").innerHTML = "Enter name";
	        return false;
	      }
	      else{
	        document.getElementById("t3").style.border = "2px solid green";
	        document.getElementById("not").style.color = "green";
	        document.getElementById("l1").style.color = "green";
	        document.getElementById("not").innerHTML = "correct";
	        return true;
	      }
	    }
	function cause(){
	      var i1 = document.getElementById("t6");
	      //document.getElementById("not1!").innerHTML = i1.value.length;
	      if(i1.value=='' || i1.value.length>1 && i1.value.length <10){
	        document.getElementById("t6").style.border = "2px solid red";
	        document.getElementById("not").style.color = "red";
	        document.getElementById("l1").style.color = "red";
	        document.getElementById("not").innerHTML = "Enter name";
	        return false;
	      }
	      else{
	        document.getElementById("t6").style.border = "2px solid green";
	        document.getElementById("not").style.color = "green";
	        document.getElementById("l1").style.color = "green";
	        document.getElementById("not").innerHTML = "correct";
	        return true;
	      }
	    }
	function place(){
	      var i1 = document.getElementById("t7");
	      //document.getElementById("not1!").innerHTML = i1.value.length;
	      if(i1.value=='' || i1.value.length>1 && i1.value.length <10){
	        document.getElementById("t7").style.border = "2px solid red";
	        document.getElementById("not").style.color = "red";
	        document.getElementById("l1").style.color = "red";
	        document.getElementById("not").innerHTML = "Enter name";
	        return false;
	      }
	      else{
	        document.getElementById("t7").style.border = "2px solid green";
	        document.getElementById("not").style.color = "green";
	        document.getElementById("l1").style.color = "green";
	        document.getElementById("not").innerHTML = "correct";
	        return true;
	      }
	    }
	function pswd(){
	      var i1 = document.getElementById("t4");
	      //document.getElementById("not1!").innerHTML = i1.value.length;
	      if(i1.value=='' || i1.value.length>1 && i1.value.length <7){
	        document.getElementById("t4").style.border = "2px solid red";
	        document.getElementById("not").style.color = "red";
	        document.getElementById("l1").style.color = "red";
	        document.getElementById("not").innerHTML = "Enter name";
	        return false;
	      }
	      else{
	        document.getElementById("t4").style.border = "2px solid green";
	        document.getElementById("not").style.color = "green";
	        document.getElementById("l1").style.color = "green";
	        document.getElementById("not").innerHTML = "correct";
	        return true;
	      }
	    }
</script>
</html>