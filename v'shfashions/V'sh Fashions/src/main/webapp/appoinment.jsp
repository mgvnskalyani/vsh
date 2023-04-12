<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
   <style type="text/css">
      input{
        width:200px;
        height:35px;
        border:1px solid black;
        border-radius: 4px;
        margin-bottom:10px;
        background: transparent;
      }
.container{
width: 40%;
position: absolute; 
top: 100px;
left:350px;
background-color:#E1E2DA  ; 

box-shadow:20px 20px 10px grey;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid black;
  border-radius: 20px; 
}
     body {

  background-image: url('images/background.jpeg');
  background-repeat: no-repeat;
   background-attachment: fixed;
  background-size: cover;
}
   </style>
    </head>
    <body onload = "doctor()">
    <h1 style='text-align:center;'>Agricultute Crop</h1>
    <div class="container">
        
               <input type="text" placeholder="Name" id="i1" /> 
               <br>
               <input type="text" placeholder="reason" id="i2" />
               <br> 
               <input type="tel" placeholder="Phnumber" id="i3" /> 
               <br>
               <input type="date" placeholder="Date" id="i4" />
               <br>
               
               <br><br>
               <button onclick="book()">Book</button>
               <p id="error"> </p>
            
           </div>
    </body>
    <script type="text/javascript">
    function book() 
	{
		var xhtml = new XMLHttpRequest();
		var x = document.getElementById("dc").value;
		var url = "http://localhost:8080/api/bookingslot";
		xhtml.open("POST", url, true);
		xhtml.setRequestHeader('Content-Type','application/json');
		xhtml.send(JSON.stringify({
			name : i1.value,
			reason : i2.value,
			phno : i3.value,
			date : i4.value,
			doctorname : x
			
		}));
		
		xhtml.onreadystatechange = function()
		{
			if(this.readyState == 4 && this.status == 200)
			{
			document.getElementById("error").innerHTML = this.responseText;
			}
		};
	}
    
    function doctor(){
    	var xhtml = new XMLHttpRequest();
		var url = "http://localhost:8080/api/doctors";
		xhtml.open("GET", url, true);
		xhtml.setRequestHeader('Content-Type','application/json');
		xhtml.send();
		var E = document.getElementById("dc");
		xhtml.onreadystatechange = function()
		{
			if(this.readyState == 4 && this.status == 200)
			{
				var data = JSON.parse(this.responseText);
				for(var x in data)
				{
					var option = document.createElement("option");
					option.value = data[x].name;
					option.text = data[x].name;
					E.add(option);
				}
			}
		};
    }
    </script>
    
</html>