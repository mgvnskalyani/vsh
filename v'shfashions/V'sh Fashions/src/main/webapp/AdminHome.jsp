<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Admin Home Page</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lato">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
body {font-family: "Lato", sans-serif}
.mySlides {display: none}
</style>
</head>
<body>


  <!-- The User Section -->
  <div class="w3-black" id="tour">
    <div class="w3-container w3-content w3-padding-64" style="max-width:800px">
    <br>
    <br>
      <h2 class="w3-wide w3-center">Complaint - Display </h2>
      <p class="w3-opacity w3-center"><i>These are the Complaints!</i></p><br>

<br>
      <div class="w3-row-padding w3-padding-32" style="margin:0 -16px">
        <div class="w3-third w3-margin-bottom">
          <img src="images/img9.jpg" alt="New York" style="width:100%" class="w3-hover-opacity">
          <div class="w3-container w3-white">
            <p><b>Shopping</b></p>
            <!-- <p class="w3-opacity">Fri 27 Nov 2016</p> -->
            <button class="w3-button w3-black w3-margin-bottom" onclick="document.getElementById('Shopping').style.display='block'">Click here</button>
          </div>
        </div>
        <div class="w3-third w3-margin-bottom">
          <img src="images/img10.jpg" alt="Paris" style="width:100%" class="w3-hover-opacity">
          <div class="w3-container w3-white">
            <p><b>Banking</b></p>
            <button class="w3-button w3-black w3-margin-bottom" onclick="document.getElementById('Banking').style.display='block'">Click here</button>
          </div>
        </div>
        <div class="w3-third w3-margin-bottom">
          <img src="images/img11.jpg" alt="San Francisco" style="width:100%" class="w3-hover-opacity">
          <div class="w3-container w3-white">
            <p><b>Booking</b></p>
            <button class="w3-button w3-black w3-margin-bottom" onclick="document.getElementById('Booking').style.display='block'">Click here</button>
          </div>
         
        </div>
      </div>
    </div>
  </div>
  <!-- Shopping -->
  <div id="Shopping" class="w3-modal">
    <div class="w3-modal-content w3-animate-top w3-card-4">
      <header class="w3-container w3-teal w3-center w3-padding-32"> 
        <span onclick="document.getElementById('Shopping').style.display='none'" 
       class="w3-button w3-teal w3-xlarge w3-display-topright">×</span>
        <h2 class="w3-wide"><i class="fa fa-suitcase w3-margin-right"></i>Details</h2>
      </header>
      <div class="w3-container">
        <!DOCTYPE html>
<html>
<head>
    <style>
        table {
          font-family: arial, sans-serif;
          border-collapse: collapse;
          width: 100%;
        }
        
        td, th {
          border: 1px solid #dddddd;
          text-align: left;
          padding: 8px;
        }
        
        tr:nth-child(even) {
          background-color: #dddddd;
        }
        </style>
</head>
<body>

<h2>Customer Details and Complaint</h2>

<table style="width:100%">
  <tr>
    <th>Name</th>
    <th>Mobile No</th>
    <th>Shopping Website</th>
    <th>Product ID</th>
    <th>Complaint</th>
    <th>No.of time Complaint given</th>
  </tr>
  <tr>
    <td>Kalyani</td>
    <td>1234567890</td>
    <td>Flipkart</td>
    <td>123456</td>
    <td>damaged product</td>
    <td>1</td>
  </tr>
  <tr>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
  </tr>
  <tr>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
  </tr>
  <tr>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
  </tr>
  <tr>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
  </tr>
</table>
<h2> Assign the Complaint</h2>
    <br>
    <form method="post" action="/assign">
    <div class="form-group">
        <label>Complaint</label>
        <input class="w3-input w3-border" type="text" placeholder="Complaint">
    </div>
    <div class="form-group">
        <label>Website's Customer Care - Mail</label>
        <input class="w3-input w3-border" type="text" placeholder="Enter Mail"> <br>
    </div>
    <div class="form-group">
        <button type="submit" class="btn btn-success btn-block">Assign</button>
    </div>
    </form>


</body>
</html>
      </div>
    </div>
  </div>

  <!-- Banking -->

  <div id="Banking" class="w3-modal">
    <div class="w3-modal-content w3-animate-top w3-card-4">
      <header class="w3-container w3-teal w3-center w3-padding-32"> 
        <span onclick="document.getElementById('Banking').style.display='none'" 
       class="w3-button w3-teal w3-xlarge w3-display-topright">×</span>
        <h2 class="w3-wide"><i class="fa fa-suitcase w3-margin-right"></i>Details</h2>
      </header>
      <div class="w3-container">
        <!DOCTYPE html>
<html>
<head>
    <style>
        table {
          font-family: arial, sans-serif;
          border-collapse: collapse;
          width: 100%;
        }
        
        td, th {
          border: 1px solid #dddddd;
          text-align: left;
          padding: 8px;
        }
        
        tr:nth-child(even) {
          background-color: #dddddd;
        }
        </style>
</head>
<body>

<h2>Customer Details and Complaint</h2>

<table style="width:100%">
  <tr>
    <th>Name</th>
    <th>Mobile No</th>
    <th>Name of UPI</th>
    <th>UPI ID</th>
    <th>Complaint</th>
    <th>No.of time Complaint given</th>
  </tr>
  <tr>
    <td>Kalyani</td>
    <td>1234567890</td>
    <td>Paytm</td>
    <td>123456</td>
    <td>Amount Deducted</td>
    <td>1</td>
  </tr>
  <tr>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
  </tr>
  <tr>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
  </tr>
  <tr>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
  </tr>
  <tr>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
  </tr>
</table>
<h2> Assign the Complaint</h2>
    <br>
    <form method="post" action="/assign">
    <div class="form-group">
        <label>Complaint</label>
        <input class="w3-input w3-border" type="text" placeholder="Complaint">
    </div>
    <div class="form-group">
        <label>Website's Customer Care - Mail</label>
        <input class="w3-input w3-border" type="text" placeholder="Enter Mail"><br>
    </div>
    <div class="form-group">
        <button type="submit" class="btn btn-success btn-block">Assign</button>
    </div>
    </form>

      </div>
    </div>
  </div>

  <!-- Booking -->
  <div id="Booking" class="w3-modal">
    <div class="w3-modal-content w3-animate-top w3-card-4">
      <header class="w3-container w3-teal w3-center w3-padding-32"> 
        <span onclick="document.getElementById('Booking').style.display='none'" 
       class="w3-button w3-teal w3-xlarge w3-display-topright">×</span>
        <h2 class="w3-wide"><i class="fa fa-suitcase w3-margin-right"></i>Details</h2>
      </header>
      <div class="w3-container">
        <!DOCTYPE html>
<html>
<head>
    <style>
        table {
          font-family: arial, sans-serif;
          border-collapse: collapse;
          width: 100%;
        }
        
        td, th {
          border: 1px solid #dddddd;
          text-align: left;
          padding: 8px;
        }
        
        tr:nth-child(even) {
          background-color: #dddddd;
        }
        </style>
</head>
<body>

<h2>Customer Details and Complaint</h2>

<table style="width:100%">
  <tr>
    <th>Name</th>
    <th>Mobile No</th>
    <th>Booking Website</th>
    <th>Destination</th>
    <th>Source</th>
    <th>Date</th>
    <th>Time</th>
    <th>Complaint</th>
    <th>No.of time Complaint given</th>
  </tr>
  <tr>
    <td>Kalyani</td>
    <td>1234567890</td>
    <td>AbhiBus</td>
    <td>Vizag</td>
    <td>Vijayawada</td>
    <td>10/01/2023</td>
    <td>01:30 pm</td>
    <td>Regarding Cancellation</td>
    <td>4</td>
  </tr>
  <tr>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
  </tr>
  <tr>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
  </tr>
  <tr>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
  </tr>
  <tr>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
  </tr>
</table>
<h2> Assign the Complaint</h2>
    <br>
    <form method="post" action="/assign">
    <div class="form-group">
        <label>Complaint</label>
        <input class="w3-input w3-border" type="text" placeholder="Complaint">
    </div>
    <div class="form-group">
        <label>Website's Customer Care - Mail</label>
        <input class="w3-input w3-border" type="text" placeholder="Enter Mail">
    </div>
    <div class="form-group">
        <button type="submit" class="btn btn-success btn-block">Assign</button>
    </div>
    </form>

      </div>
    </div>
  </div>

        

  </body>
</html>
    