<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page contentType="text/html; charset=UTF-8" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Güney Çağlayan ~ Sample Project</title>

    <!-- Font Icon -->
    <link rel="stylesheet" href="asset/fonts/material-icon/css/material-design-iconic-font.min.css">

    <!-- Main css -->
    <link rel="stylesheet" href="asset/css/style.css">
</head>
<body>

    <div class="main">

        <!-- Sign up form -->
        <section class="signup">
            <div class="container">
                <div class="signup-content">
                    <div class="signup-form">
                        <h2 class="form-title">Home</h2>
                            <div class="form-group form-button">
                                <a href="/recordBook/register" type="button" name="submit" id="signup" class="form-submit" value="Register">Register</a>
                            </div>
                            <div class="form-group form-button">
                                <a href="/recordBook/user-list" type="button" name="submit" id="signup" class="form-submit" value="user-list">User List</a>
                            </div>
                    </div>
                    
                    <div class="signup-image">
                        <figure><img src="asset/images/signup-image.jpg" alt="sing up image"></figure>
                    </div>
                </div>
            </div>
        </section>
    </div>

    <!-- JS -->
    <script src="asset/vendor/jquery/jquery.min.js"></script>
    <script src="asset/js/main.js"></script>
</body>
</html>

