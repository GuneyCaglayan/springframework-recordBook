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
                        <h2 class="form-title">New User</h2>
                        <form class="register-form" id="register-form">
                            <div class="form-group">
                                <label for="firstName"></label>
                                <input required type="text" name="firstName" id="firstName" placeholder="Your First Name"/>
                            </div>
                            <div class="form-group">
                                <label for="lastName"></label>
                                <input required type="text" name="lastName" id="lastName" placeholder="Your Last Name"/>
                            </div>
                            <div class="form-group">
                                <label for="blood"></label>
                                <input required type="text" name="blood" id="blood" placeholder="Your Blood Group"/>
                            </div>
                            <div class="form-group">
                                <label for="phoneNumber"></label>
                                <input required type="text" name="phoneNumber" id="phoneNumber" placeholder="Your Phone Number"/>
                            </div>
                            <div class="form-group">
                                <label for="address"></label>
                                <input required type="text" name="address" id="address" placeholder="Your Address"/>
                            </div>
                            <div class="form-group form-button">
                                <input type="submit" class="form-submit" value="Save" onClick="register()"/>
                                <a href="/recordBook/user-list" type="submit" title="Bakc to User List" class="form-submit" value="userList" disabled>User List</a>
                            </div>
                        </form>
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
    <script src="asset/custom/register.js"></script>
</body>
</html>

