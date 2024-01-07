<!DOCTYPE html>
<html lang="en">
<head>
    <title>Notes - Login</title>
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;500;600&display=swap" rel="stylesheet">
    <!--Stylesheet-->
    <style media="screen">

        body, html {
            margin: 0;
            padding: 0;
            height: 100%
        }

        .bgimg {
            background-image: url("https://images.unsplash.com/photo-1617743226959-3f96e582b548");
            min-height: 100%;
            background-position: center;
            background-size: cover;
        }


        form {
            height: auto;
            width: 500px;
            background-color: rgba(255, 255, 255, 0.13);
            position: absolute;
            transform: translate(-50%, -50%);
            top: 50%;
            left: 50%;
            border-radius: 30px;
            backdrop-filter: blur(10px);
            border: 2px solid rgba(255, 255, 255, 0.1);
            box-shadow: 0 0 40px rgba(8, 7, 16, 0.6);
            padding: 50px 35px;
        }

        form * {
            font-family: 'Poppins', sans-serif;
            color: #ffffff;
            letter-spacing: 1px;
            outline: none;
            border: none;
        }

        form h3 {
            font-size: 32px;
            font-weight: 500;
            line-height: 42px;
            text-align: center;
        }

        label {
            display: block;
            margin-top: 30px;
            font-size: 16px;
            font-weight: 500;
        }

        input[type="text"] {
            width: 100%;
            background-color: rgba(0, 0, 0, 0);
            padding: 15px 0;
            font-size: 18px;
            font-weight: 200;
            cursor: pointer;
            text-align: center;
        }

        input {
            display: block;
            height: 50px;
            width: 100%;
            background-color: rgba(255, 255, 255, 0.07);
            border-radius: 10px;
            padding: 0 10px;
            margin-top: 8px;
            font-size: 14px;
            font-weight: 300;
        }

        ::placeholder {
            color: #e5e5e5;
        }

        button {
            width: 100%;
            background-color: rgba(255, 255, 255, 0);
            color: #ffffff;
            padding: 15px 0;
            font-size: 18px;
            font-weight: 200;
            cursor: pointer;
        }



        .button_login {
            background-color: #ffffff;
            border-radius: 50px;
            color: #080710;
            font-size: 18px;
            font-weight: 600;
        }


        .buttons {
            margin-top: 30px;
        }

        .fa-user {
            color: black;
        }
        .fa-angle-left{
            color: white;
            font-size: 30px;
            position: absolute;
            top: 20px;
            left: 20px;
            cursor: pointer;
        }

        @media (max-width: 1300px) {
            input[type="text"] {
                font-size: 30px;
            }

            .bgimg {
                background-image: url("https://i.pinimg.com/736x/34/73/0c/34730ca7f947e9906296a860b3911792.jpg");
            }

            form {
                width: 80%;
                height: auto;
            }

            input {
                height: 80px;
                font-size: 30px;
            }

            form h3 {
                font-size: 50px;
            }

            label {
                font-size: 30px;
            }

            button {
                font-size: 30px;
            }

            .button_login {
                font-size: 30px;
            }
        }
    </style>
</head>
<body>
<div class="bgimg">
    <form action="${pageContext.request.contextPath}/api/authentication/login" method="post">
        <a href="${pageContext.request.contextPath}">
            <i class="fa fa-angle-left"></i>
        </a>
        <h3>Login</h3>

        <label for="email">E-mail</label>
        <input type="email" required placeholder="E-mail" id="email" name="email">

        <label for="password">Password</label>
        <input type="password" required placeholder="Password" id="password" name="password">

        <div class="buttons">
            <button class="button_login" type="submit"><i class="fa fa-user"></i> Sign In</button>
            <a href="${pageContext.request.contextPath}/signUp.jsp">
                <label>
                    <input class="button" type="text" placeholder="Sign Up" />
                </label>
            </a>
        </div>
    </form>
</div>
</body>
</html>
