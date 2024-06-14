document.addEventListener('DOMContentLoaded', function() {
    const registrationForm = document.getElementById('registrationForm');
    const successMessage = document.getElementById('successMessage');

    registrationForm.addEventListener('submit', function(event) {
        event.preventDefault(); // Prevent the form from submitting normally

        // Send form data to server (you can replace this with your own logic)
        const formData = new FormData(this);

        // Display success message
        successMessage.textContent = "Registration successful!";
        this.reset(); // Reset form fields
    });
});
