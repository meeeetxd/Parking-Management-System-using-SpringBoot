<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
   <head>
    <style type="text/css">
        <%@ include file="/views/css/menu_style.css"%>

        body {
            font-family: Arial, sans-serif;
        }

        .container {
            display: flex;
            justify-content: center;
            align-items: center;
            margin-top: 50px;
        }

        .form-container {
            display: flex;
            justify-content: center;
            align-items: center;
            width: 1000px; 
        }

        .image-left, .image-right {
            width: 450px; /* image width */
            height: 600px; /* image height */
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
            transition: transform 0.3s ease;
        }

        .image-left:hover, .image-right:hover {
            /*transform: scale(1.05); */
        }
		
		.image-left{
			margin-left:1rem;
		}
		
		.image-right{
			margin-right:2rem;
		}

        form {
            width: 500px;
            background-color: #f5f5f5;
            padding: 20px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            border-radius: 10px;
        }

        h1 {
            text-align: center;
            font-size: 24px;
        }

        input, select {
            width: 100%;
            padding: 10px;
            margin: 10px 0;
            border: 1px solid #ccc;
            border-radius: 5px;
        }

        input[type="submit"] {
            background-color: blue;
            color: white;
            cursor: pointer;
            border: none;
        }

        input[type="submit"]:hover {
            background-color: darkblue;
        }
		
		.parking-id, .parking-cost{
			display:flex;
			flex-direction:column;
			justify-content:start;
			width:45%;
		}
		.row1{
			display:flex;
			gap:1rem;
			margin-top:1rem;
			max-height:6rem;
		}


    </style>
      <meta charset="utf-8">
      <title>Responsive Navigation Menu</title>
      <link rel="stylesheet" href="/views/css/menu_style.css">
      <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"/>
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
   </head>
   <body>
      <nav>
         <div class="logo">
            Online Parking System
         </div>
         <label for="click" class="menu-btn">
         <i class="fas fa-bars"></i>
         </label>
         <ul>
            <li><a href="/User_Home">Home</a></li>
            <li><a class="active" href="/bookParking">Book Parking</a></li>
            <li><a href="/yourBooking">Your Booking</a></li>
            <li><a href="#">${User}</a></li>
            <li><a href="/">Logout</a></li>
         </ul>
      </nav>
     
      <div class="container">
        <!-- Left Image -->
        <img src="/views/images/ParkingSlotsLeft.drawio.png" alt="Parking Left Image" class="image-left">

        <div class="form-container">
          <!-- Form in Center -->
          <form action="/book-parking-slot" method="post">
              <h1>Book Parking Slot</h1>
			  
		<div class="row1">
              <div class="parking-id">
          <label for="park_id">Parking Id</label>
          <input type="text" id="park_id" name="park_id1" value="${Park_id}" disabled><br></br>
			</div>
		  <div class="parking-cost">
		        <label for="park_cost">Parking Cost Per Hours</label>
		        <input type="text" id="park_cost" name="park_cost1" value="${Park_cost}" disabled><br></br>
		  </div>
		 </div>
						
              <label for="vehicle_number">Vehicle Number</label>
              <input type="text" id="vehicle_number"name="vehicle_number" placeholder="KP-12-1234"><br></br>

              <label for="select_date">Select Date</label>
              <input type="date" id="select_date" name="start_date"><br></br>
			
              <label for="parking_time">Parking Time</label>
              <select id="parking_time" name="parking_end_time">
                  <option value="1">1 Hour</option>
                  <option value="2">2 Hours</option>
                  <option value="3" selected>3 Hours</option>
                  <option value="4">4 Hours</option>
                  <option value="5">5 Hours</option>
              </select><br>

              <div>${Out}</div><br>

              <input type="submit" value="Book Slot">
          </form>
        </div>

        <!-- Right Image -->
        <img src="/views/images/ParkingSlotsRight.drawio.png" alt="Parking Right Image" class="image-right">
      </div>

      <div>${PrintSwal}</div>
   </body>
</html>
