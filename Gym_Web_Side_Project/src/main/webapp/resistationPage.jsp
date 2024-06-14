<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Gym Registration</title>
    <link rel="stylesheet" href="ressitationPage.css">
</head>
<body>
    <div class="registration-form">
        <h2>WELCOME TO SK SYM</h2>
        <form id="registrationForm" action="resiter" method="POST">
            <!-- Form fields -->
            <div class="form-group">
                <label for="name">Name:</label>
                <input type="text" id="name" name="name" required>
            </div>
            <div class="form-group">
                <label for="email">Email:</label>
                <input type="email" id="email" name="email" required>
            </div>
            <div class="form-group">
                <label for="password">Password:</label>
                <input type="password" id="password" name="password" required>
            </div>
            <div class="form-group">
                <label for="mobile">Mobile Number:</label>
                <input type="tel" id="mobile" name="mobile" pattern="[0-9]{10}" required>
            </div>
            <div class="form-group">
                <label for="weight">Weight (in kg):</label>
                <input type="number" id="weight" name="weight" required>
            </div>
            <div class="form-group">
                <label for="age">Age:</label>
                <input type="number" id="age" name="age" required>
            </div>
            <div class="form-group">
                <label for="gender">Gender:</label>
                <select id="gender" name="gender" required>
                    <option value="male">Male</option>
                    <option value="female">Female</option>
                    <option value="other">Other</option>
                </select>
            </div>
            <div class="form-group">
                <label for="fitness-goals">Fitness Goals:</label>
                <textarea id="fitness-goals" name="fitness-goals" required></textarea>
            </div>
            <div class="form-group">
                <label for="medical-conditions">Medical Conditions:</label>
                <textarea id="medical-conditions" name="medical-conditions"></textarea>
            </div>
            <div class="form-group">
                <label for="emergency-contact">Emergency Contact Details:</label>
                <textarea id="emergency-contact" name="emergency-contact"></textarea>
            </div>
            <div class="form-group">
                <label for="workout-timings">Preferred Workout Timings:</label>
                <select id="workout-timings" name="workout-timings" required>
                    <option value="morning">Morning</option>
                    <option value="afternoon">Afternoon</option>
                    <option value="evening">Evening</option>
                </select>
            </div>
            <div class="form-group">
                <label for="join-date">Date of Joining:</label>
                <input type="date" id="join-date" name="join-date" required>
            </div>

            <button type="submit">Register</button>
        </form>
       
    <script src="resistationPage.js"></script>
</body>
</html>
