<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
   <head>
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" />
   	<style type="text/css">
		<%@ include file="/views/css/menu_style.css"%>
		
		.action-buttons {
		        margin-top: 20px;
		        display: flex;
		        justify-content: center;
		        gap: 40px;
		    }

		    .action-link {
		        text-decoration: none;
		        color: white;
		        font-size: 16px;
		        text-align: center;
		    }

		    .action-link img {
		        display: block;
		        margin: 0 auto;
		        width: 170px; 
		        height: 170px; 
		        border-radius: 10px; 
		        box-shadow: 0 0 15px rgba(0, 0, 0, 0.3); 
		        transition: transform 0.3s ease, box-shadow 0.3s ease, filter 0.3s ease; 
		    }

		    
		    .action-link img {
		        filter: drop-shadow(0px 0px 15px rgba(0, 0, 0, 0.6));
		    }

		   
		    .action-link:hover img {
		        transform: scale(1.1); 
		        box-shadow: 0 0 25px rgba(0, 0, 0, 0.6); 
		        filter: brightness(1.1); 
		    }

		    .action-link span {
		        display: block;
		        margin-top: 10px;
		        transition: color 0.3s ease;
		    }

		    
		    .action-link:hover span {
		        color: #007bff;
		        text-decoration: none;
		    }
}
	</style>
      <meta charset="utf-8">
      <title>Menu</title>
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
            <li><a class="active" href="/User_Home">Home</a></li>
            <li><a href="/bookParking">Book Parking</a></li>
            <li><a href="/yourBooking">Your Booking</a></li>
            <li><a href="#">${User}</a></li>
            <li><a href="/">Logout</a></li>
         </ul>
      </nav>
     
      <div class="content">
          <div class="imageDiv">
			<img class="baseImg" alt="parking image" src="/views/images/formulaOneCar.png" width=70%> 
		</div>
		
		<div class="action-buttons">
		        <a href="/bookParking" class="action-link">
		            <img src="/views/images/ParkLogo.jpg" alt="Book Parking Icon" class="action-icon" />
		            <span>Book Parking</span>
		        </a>
		        <a href="/yourBooking" class="action-link">
		            <img src="/views/images/ViewBookings.jpg" alt="View Bookings Icon" class="action-icon" />
		            <span>View Bookings</span>
		        </a>
		    </div>
		
      </div>
      <div>${PrintSwal}</div>
   </body>
</html>
