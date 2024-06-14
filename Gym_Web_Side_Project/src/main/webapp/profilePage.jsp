<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Member Profile</title>
    <link rel="stylesheet" href="profile.css">
</head>
<body>
    <header>
        <h1>Member Profile</h1>
    </header>
    <div class="profile-container">
        <h2>Welcome, ${session_name} In SK SYM!</h2>
        <div class="profile-details">
            <p><strong>Name:</strong> ${session_name}</p>
            <p><strong>Email:</strong> ${session_email}</p>
            <p><strong>Mobile Number:</strong> ${session_mobile_number}</p>
            <p><strong>Weight (kg):</strong> ${session_weight_kg}</p>
            <p><strong>Age:</strong> ${session_age}</p>
            <p><strong>Gender:</strong> ${session_gender}</p>
            <p><strong>Fitness Goals:</strong> ${session_fitness_goals}</p>
            <p><strong>Medical Conditions:</strong> ${session_medical_conditions}</p>
            <p><strong>Emergency Contact:</strong> ${session_emergency_contact_details}</p>
            <p><strong>Preferred Workout Timings:</strong> ${session_workout_timings}</p>
            <p><strong>Date of Joining:</strong> ${session_date_of_joining}</p>
        </div>
        <button class="home-button" onclick="location.href='index.jsp'">Home Page</button>
    </div>
    <footer>
        <p>&copy; 2024 Sk Gym. All Rights Reserved.</p>
    </footer>
    <script src="profile.js"></script>
</body>
</html>
