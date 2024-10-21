<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
   <head>
   	<style type="text/css">
		<%@ include file="/views/css/menu_style.css"%>

table {
  border-collapse: collapse;
  width: 100%;
}

th, td {
  border: 1px solid black;
  padding: 10px;
}

.headingTR{
	
	background-color: #1b1b1b;
	color: white;
}

.bodyTR,tr{
	background-color:#fff;
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
            <li><a href="/bookParking">Book Parking</a></li>
            <li><a class="active" href="/yourBooking">Your Booking</a></li>
            <li><a href="#">${User}</a></li>
            <li><a href="/">Logout</a></li>
         </ul>
      </nav>
     
      <div class="content">
      
       <table>
                 <tr class="headingTR">
                    <th>Parking id </th>
                    <th>Vehicle No </th>
                    <th>Parking Date </th>
                    <th>Start Time </th>
                    <th>End Time </th>
                    <th>Slot Name </th>
                    <th>Parking Cost </th>
                    
                    
                </tr>
               <div class="bodyTR">${Out}</div>
                     
            </table>
      
      
         <!--<div><img alt="park" src="/views/images/park.jpg" width=70%> </div> --> 
      </div>
      <div>${PrintSwal}</div>
   </body>
</html>
