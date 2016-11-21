<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/scripts.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Car Reservation</title>
</head>
<body>
	<h3>Reservation</h3>
	<div id="panelReservation" >
	<form action="${pageContext.request.contextPath}/reservations/add" method="post">
	<table>
		<tr>
			<td>Customer :</td>
			<td>
				<select name="user">
				<option value="-1">--Select--</option>
					<c:forEach var="cus" items="${customers}">					
						<option value="${cus.id}">${cus.fullName}</option>						
					</c:forEach>
				</select>
			</td>
		</tr>
		<tr>
			<td>Car list:</td>
			<td>
				<select name="cars">
				<option value="-1">--Select--</option>
					<c:forEach var="c" items="${cars}">					
						<option value="${c.id}">${c.shortDescription}</option>						
					</c:forEach>
				</select>
			</td>
		</tr>
		<tr>
			<td>Reservation Start Date: </td>
			<td>			
			<input type="text" pattern="\d{1,2}/\d{1,2}/\d{4}" class="datepicker" 
				name="startDate" value="${reservation.startDate}" />
			</td>
		</tr>
		<tr>
			<td>Reservation End Date: </td>
			<td>
			<input type="text" pattern="\d{1,2}/\d{1,2}/\d{4}" class="datepicker" 
				name="endDate" value="${reservation.endDate}" />			
			</td>
		</tr>
		<tr>
			<td>Status: </td>
			<td>
				<select name="status">
					<option value ="">--Select--</option>
					<c:forEach var ="s" items ="${statusList}">
						<c:choose>
						<c:when test="${s eq reservation.status }">
							<option value ="${s}" selected="selected">${s}</option>
						</c:when>
						<c:otherwise>
							<option value ="${s}">${s}</option>
						</c:otherwise>
						</c:choose>
					</c:forEach>
				</select>
			</td>
		</tr>
	</table>
	<input type="submit" value="Save"/>
	<input type="button" class ="linkToUrl" data-url="${pageContext.request.contextPath}/reservationsList" value="Cancel"/>	
	</form>
	 </div>	
</body>
</html>