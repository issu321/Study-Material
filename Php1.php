<!DOCTYPE html>
<html lang="en">
<head>
    <title>Student Signup Form</title>

    <style>
        /* Styling for the form */
        body {
            font-size: 20px;
            background-color: yellow;
            font-family: Arial, sans-serif;
        }
    </style>

    <script>
        function callme() {
            // Getting input values from the form
            var name = document.getElementById("name").value;
            var email = document.getElementById("email").value;
            var password = document.getElementById("password").value;
            var gender = document.querySelector('input[name="gender"]:checked')?.value;

            // Logging values to the console for verification
            console.log("Name: " + name);
            console.log("Email: " + email);
            console.log("Password: " + password);
            console.log("Gender: " + gender);
        }
    </script>
</head>

<body>
    <form>
        <!-- Input fields for user data -->
        Name: <input type="text" name="name" id="name" required> <br>
        Email: <input type="email" name="email" id="email" required> <br>
        Password: <input type="password" name="password" id="password" required> <br>

        <!-- Radio buttons for gender selection -->
        Gender:
        <input type="radio" name="gender" value="Male"> Male
        <input type="radio" name="gender" value="Female"> Female
        <br><br>

        <!-- Submit button calls the JavaScript function -->
        <input type="button" value="Submit" onclick="callme()">
    </form>
</body>
</html>
