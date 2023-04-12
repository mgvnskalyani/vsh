<!DOCTYPE html>
<html lang="en">
<head>
<title>User Home Page</title>
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
      <h2 class="w3-wide w3-center">Complaint - Section</h2>
      <p class="w3-opacity w3-center"><i>We are there to minimize your Complaints!</i></p><br>
<br>
<br>

      <div class="w3-row-padding w3-padding-32" style="margin:0 -16px">
        <div class="w3-third w3-margin-bottom">
          <img src="images/img9.jpg" alt="New York" style="width:100%" class="w3-hover-opacity">
          <div class="w3-container w3-white">
            <p><b>Shopping</b></p>
            <!-- <p class="w3-opacity">Fri 27 Nov 2016</p> -->
<button class="w3-button w3-black w3-margin-bottom" onclick="document.getElementById('appoinment.jsp').style.display='block'">Click here</button>
          </div>
        </div>
        <div class="w3-third w3-margin-bottom">
          <img src="images/img10.jpg" alt="Paris" style="width:100%" class="w3-hover-opacity">
          <div class="w3-container w3-white">
            <p><b>Banking</b></p>
          <button>  <tr><a href="appoinment.jsp">banking</a> </tr></button>
          </div>
        </div>
        <div class="w3-third w3-margin-bottom">
          <img src="images/img11.jpg" alt="San Francisco" style="width:100%" class="w3-hover-opacity">
          <div class="w3-container w3-white">
            <p><b>Booking</b></p>
            <button class="w3-button w3-black w3-margin-bottom" onclick="Userlogin.jsp">Click here</button>
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
       class="w3-button w3-teal w3-xlarge w3-display-topright">�</span>
        <h2 class="w3-wide"><i class="fa fa-suitcase w3-margin-right"></i>Details</h2>
      </header>
      <div class="w3-container">
        <h2><label>Personal Details</label></h2>

        <form>
          <label for="name">Name : </label>
          <!--<input type="text" id="Name" name="Name"><br><br> -->
          <input class="w3-input w3-border" type="text" placeholder="Enter Name">
          <label for="Mobile No">Mobile No : </label>
          <!-- <input type="text" id="Mobile No" name="Mobile No"><br><br> -->
          <input class="w3-input w3-border" type="text" placeholder="Enter Mobile No">
          <label for="Mail">E-Mail : </label>
          <!-- <input type="text" id="Mail" name="Mail"><br><br> -->
          <input class="w3-input w3-border" type="text" placeholder="Enter E-Mail">
          <label for="Address">Address : </label>
          <!-- <input type="text" id="Address" name="Address"><br> -->
          <input class="w3-input w3-border" type="text" placeholder="Enter Address">
        
        <h2> Shopping Website </h2>
        <label>Choose a website from this list: <br><br>
        <input class="w3-input w3-border" list="Websites" type="text" placeholder="Select Website From Drop-Down">
        <!-- <input list="Websites" name="Websites" /></label> -->

        <datalist id="Websites">
          <option value="Amazon">
          <option value="Flipkart">
          <option value="Ajio">
          <option value="Myntra">
          <option value="Meesho">
          <option value="Snapdeal">
        </datalist>
        
        <h2>Product Details </h2>
        <label for="Product ID">Product ID : </label><br><br>
         <!--<input type="text" id="Product ID" name="Product ID"><br> -->
          <input class="w3-input w3-border" type="text" placeholder="Enter Product ID">
          
        <h2>Complaint</h2>
        <label>Complaint : <br><br>
        <!-- <input list="Complaint" name="Complaint" /></label> -->
        <input class="w3-input w3-border" list="Complaint" type="text" placeholder="Select Complaint From Drop-Down">
        <datalist id="Complaint">
          <option value="quality low">
          <option value="size differ">
          <option value="replacement problem">
          <option value="refund">
        </datalist>
        <label for="If Others Mention the Complaint (Optional)">If Others Mention the Complaint (Optional) :</label>
          <!-- <input type="text" id="If Others Mention the Complaint (Optional)" name="If Others Mention the Complaint (Optional)"><br> -->
          <input class="w3-input w3-border" type="text" placeholder="">
        
        <h2>No.of Times Same Complaint Given</h2>
        <label>No.of Times Same Complaint Given : <br><br>
        <!-- <input list="No.of Times" name="No.of Times7p" /></label> -->
        <input class="w3-input w3-border" list="No.of Times" type="text" placeholder="Select From Drop-Down">
        <datalist id="No.of Times">
          <option value="0">
          <option value="1">
          <option value="2">
          <option value="3">
          <option value="4">
          <option value="More than 4">
        </datalist>
        </form>
        
        <button class="w3-button w3-block w3-teal w3-padding-16 w3-section w3-right">SUBMIT<i class="fa fa-check"></i></button>
        <button class="w3-button w3-red w3-section" onclick="document.getElementById('ticketModal').style.display='none'">Close <i class="fa fa-remove"></i></button>
        <p class="w3-right">Need <a href="#" class="w3-text-blue">help?</a></p>
      </div>
    </div>
  </div>

  <!-- Banking -->

  <div id="Banking" class="w3-modal">
    <div class="w3-modal-content w3-animate-top w3-card-4">
      <header class="w3-container w3-teal w3-center w3-padding-32"> 
        <span onclick="document.getElementById('Banking').style.display='none'" 
       class="w3-button w3-teal w3-xlarge w3-display-topright">�</span>
        <h2 class="w3-wide"><i class="fa fa-suitcase w3-margin-right"></i>Details</h2>
      </header>
      <div class="w3-container">
        <h2><label>Personal Details</label></h2>

        <form>
          <label for="name">Name : </label>
          <!--<input type="text" id="Name" name="Name"><br><br> -->
          <input class="w3-input w3-border" type="text" placeholder="Enter Name">
          <label for="Mobile No">Mobile No : </label>
          <!-- <input type="text" id="Mobile No" name="Mobile No"><br><br> -->
          <input class="w3-input w3-border" type="text" placeholder="Enter Mobile No">
          <label for="Mail">E-Mail : </label>
          <!-- <input type="text" id="Mail" name="Mail"><br><br> -->
          <input class="w3-input w3-border" type="text" placeholder="Enter E-Mail">
          <label for="Address">Address : </label>
          <!-- <input type="text" id="Address" name="Address"><br> -->
          <input class="w3-input w3-border" type="text" placeholder="Enter Address">
        
          <h2>Name of UPI</h2>
          <label>Choose a UPI from this list: <br><br>
          <!-- <input list="UPI" name="UPI" /></label> -->
          <input class="w3-input w3-border" list="UPI" type="text" placeholder="">
          <datalist id="UPI">
            <option value="Paytm">
            <option value="Phonepe">
            <option value="GPay">
            <option value="AmazonPay">
            <option value="YonoSBI">
          </datalist><br>
          
        
          <h2>UPI ID</h2>
          <label for="UPI ID">UPI ID : </label>
           <!-- <input type="text" id="UPI ID" name="UPI ID"><br> -->
            <input class="w3-input w3-border"  type="text" placeholder="Enter UPI ID">
          
        <h2>Complaint</h2>
        <label>Complaint : <br><br>
        <!-- <input list="Complaint" name="Complaint" /></label> -->
        <input class="w3-input w3-border" list="Banking-Complaint" type="text" placeholder="Select Complaint From Drop-Down">
        <datalist id="Banking-Complaint">
          <option value="Pending deposit">
            <option value="Deduction of wrong amount">
            <option value="Loans problem">
            <option value="Transaction done but money not sent">
            <option value="Wrongly withdrawn">
            <option value="Fund transfer issues">
            <option value="Balance enquiry issues">
            <option value="Others">
        </datalist>
        <label for="If Others Mention the Complaint (Optional)">If Others Mention the Complaint (Optional) :</label>
          <!-- <input type="text" id="If Others Mention the Complaint (Optional)" name="If Others Mention the Complaint (Optional)"><br> -->
          <input class="w3-input w3-border" type="text" placeholder="">
        
        <h2>No.of Times Same Complaint Given</h2>
        <label>No.of Times Same Complaint Given : <br><br>
        <!-- <input list="No.of Times" name="No.of Times7p" /></label> -->
        <input class="w3-input w3-border" list="No.of Times" type="text" placeholder="Select From Drop-Down">
        <datalist id="No.of Times">
          <option value="0">
          <option value="1">
          <option value="2">
          <option value="3">
          <option value="4">
          <option value="More than 4">
        </datalist>
        </form>
        
        <button class="w3-button w3-block w3-teal w3-padding-16 w3-section w3-right">SUBMIT<i class="fa fa-check"></i></button>
        <button class="w3-button w3-red w3-section" onclick="document.getElementById('ticketModal').style.display='none'">Close <i class="fa fa-remove"></i></button>
        <p class="w3-right">Need <a href="#" class="w3-text-blue">help?</a></p>
      </div>
    </div>
  </div>

  <!-- Booking -->
  <div id="Booking" class="w3-modal">
    <div class="w3-modal-content w3-animate-top w3-card-4">
      <header class="w3-container w3-teal w3-center w3-padding-32"> 
        <span onclick="document.getElementById('Booking').style.display='none'" 
       class="w3-button w3-teal w3-xlarge w3-display-topright">�</span>
        <h2 class="w3-wide"><i class="fa fa-suitcase w3-margin-right"></i>Details</h2>
      </header>
      <div class="w3-container">
        <h2><label>Personal Details</label></h2>

        <form>
          <label for="name">Name : </label>
          <!--<input type="text" id="Name" name="Name"><br><br> -->
          <input class="w3-input w3-border" type="text" placeholder="Enter Name">
          <label for="Mobile No">Mobile No : </label>
          <!-- <input type="text" id="Mobile No" name="Mobile No"><br><br> -->
          <input class="w3-input w3-border" type="text" placeholder="Enter Mobile No">
          <label for="Mail">E-Mail : </label>
          <!-- <input type="text" id="Mail" name="Mail"><br><br> -->
          <input class="w3-input w3-border" type="text" placeholder="Enter E-Mail">
          <label for="Address">Address : </label>
          <!-- <input type="text" id="Address" name="Address"><br> -->
          <input class="w3-input w3-border" type="text" placeholder="Enter Address">

          <h2>Name of Online Booking Sites/Applications</h2>
          <label>Choose a Site/App from this list: <br><br>
          <!-- <input list="Site" name="Site" /></label> -->
          <input list = "Site" class="w3-input w3-border" type="text" placeholder="">
          <datalist id="Site">
            <option value="BookMyShow">
            <option value="Abhibus">
            <option value="Redbus">
            <option value="IRCTC">
          </datalist><br>

          <h2>Journey Details</h2>
          <label for="Destination">Destination : </label>
            <!-- <input type="text" id="Destination" name="Destination"><br><br> -->
            <input class="w3-input w3-border" type="text" placeholder="Enter Destination">

          <label for="Source">Source : </label>
            <!-- <input type="text" id="Source" name="Source"><br><br> -->
            <input class="w3-input w3-border" type="text" placeholder="Enter Source">

          <label for="Date">Date : </label>
            <!-- <input type="text" id="Date" name="Date"><br><br> --> 
            <input class="w3-input w3-border" type="text" placeholder="Enter Date">

          <label for="Time">Time : </label>
            <!-- <input type="text" id="Time" name="Time"><br><br> -->
            <input class="w3-input w3-border" type="text" placeholder="Enter Time">

            <h2>Complaint</h2>
            <label>Complaint : <br><br>
            <!-- <input list="Complaint" name="Complaint" /></label> -->
            <input class="w3-input w3-border" list="Booking-Complaint" type="text" placeholder="Select Complaint From Drop-Down">
            <datalist id="Booking-Complaint">
              <option value="Ticket Not Booked">
              <option value="Amount Deducted">
              <option value="Regarding Cancellation">
              <option value="Others">
            </datalist><br><br>
            <label for="If Others Mention the Complaint (Optional)">If Others Mention the Complaint (Optional) :</label>
              <!-- <input type="text" id="If Others Mention the Complaint (Optional)" name="If Others Mention the Complaint (Optional)"><br> -->
              <input class="w3-input w3-border" type="text" placeholder="">

              <h2>No.of Times Same Complaint Given</h2>
        <label>No.of Times Same Complaint Given : <br><br>
        <!-- <input list="No.of Times" name="No.of Times7p" /></label> -->
        <input class="w3-input w3-border" list="No.of Times" type="text" placeholder="Select From Drop-Down">
        <datalist id="No.of Times">
          <option value="0">
          <option value="1">
          <option value="2">
          <option value="3">
          <option value="4">
          <option value="More than 4">
        </datalist>
        </form>
        
        <button class="w3-button w3-block w3-teal w3-padding-16 w3-section w3-right">SUBMIT<i class="fa fa-check"></i></button>
        <button class="w3-button w3-red w3-section" onclick="document.getElementById('ticketModal').style.display='none'">Close <i class="fa fa-remove"></i></button>
        <p class="w3-right">Need <a href="#" class="w3-text-blue">help?</a></p>
      </div>
    </div>
  </div>

        

  </body>
</html>
