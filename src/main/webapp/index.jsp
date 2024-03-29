<!DOCTYPE html>
<html>
<head>
    <title>Notes - Home</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <style>
        body, h1, h2, h3, h4, h5, h6 {
            font-family: "Raleway", sans-serif
        }

        body, html {
            height: 100%;
            line-height: 1.8;
        }

        /* Full height image header */
        .backgroundImage {
            background-position: center;
            background-size: cover;
            background-image: url("https://images.unsplash.com/photo-1483546416237-76fd26bbcdd1");
            min-height: 100%;
        }

        .w3-bar .w3-button {
            padding: 16px;
        }

        @media (max-width: 1300px) {
            .backgroundImage {
                background-image: linear-gradient(to bottom, rgba(0, 0, 0, 0.5), rgba(0, 0, 0, 0.5)), url("https://i.pinimg.com/564x/aa/d3/c7/aad3c700dd6a1402ab40a8bc6c3cf258.jpg");
            }
        }


    </style>
</head>
<body>

<!-- Navbar (sit on top) -->
<div class="w3-top">
    <div class="w3-bar w3-white w3-card" id="myNavbar">
        <a href="${pageContext.request.contextPath}" class="w3-bar-item w3-button w3-wide">Notes</a>
        <!-- Right-sided navbar links -->
        <div class="w3-right w3-hide-small">
            <a href="#about" class="w3-bar-item w3-button">ABOUT</a>
            <a href="${pageContext.request.contextPath}/login.jsp" class="w3-bar-item w3-button">
                <i class="fa fa-user"></i> LOGIN
            </a>
            <a href="#contact" class="w3-bar-item w3-button"><i class="fa fa-envelope"></i> CONTACT</a>
        </div>
        <!-- Hide right-floated links on small screens and replace them with a menu icon -->

        <a href="javascript:void(0)" class="w3-bar-item w3-button w3-right w3-hide-large w3-hide-medium"
           onclick="w3_open()">
            <i class="fa fa-bars"></i>
        </a>
    </div>
</div>

<!-- Sidebar on small screens when clicking the menu icon -->
<nav class="w3-sidebar w3-bar-block w3-black w3-card w3-animate-left w3-hide-medium w3-hide-large" style="display:none"
     id="mySidebar">
    <a href="javascript:void(0)" onclick="w3_close()" class="w3-bar-item w3-button w3-large w3-padding-16">Close ×</a>
    <a href="#about" onclick="w3_close()" class="w3-bar-item w3-button">ABOUT</a>
    <a href="${pageContext.request.contextPath}/login.jsp" class="w3-bar-item w3-button">
        <i class="fa fa-user"></i> LOGIN
    </a>
    <a href="#contact" onclick="w3_close()" class="w3-bar-item w3-button">CONTACT</a>
</nav>

<!-- Header with full-height image -->
<header class="backgroundImage w3-display-container w3-grayscale-min" id="home">
    <div class="w3-display-left w3-text-white" style="padding:48px">
        <span class="w3-jumbo w3-hide-small">Create your own notebooks!</span><br>
        <span class="w3-xxlarge w3-hide-large w3-hide-medium">Create your own notebooks!</span><br>
        <span class="w3-large">For ideas, tasks or annotations.</span>
        <p><a href="#about"
              class="w3-button w3-white w3-padding-large w3-large w3-margin-top w3-opacity w3-hover-opacity-off">Learn
            more and start today</a></p>
    </div>
    <a href="https://github.com/gfLobo/Notes" class="w3-display-bottomleft w3-text-grey w3-large" style="padding:24px 48px;cursor: pointer">
        <i class="fa fa-github" style="font-size:24px"></i>
    </a>
</header>

<script>


    // Toggle between showing and hiding the sidebar when clicking the menu icon
    const mySidebar = document.getElementById("mySidebar");

    function w3_open() {
        if (mySidebar.style.display === 'block') {
            mySidebar.style.display = 'none';
        } else {
            mySidebar.style.display = 'block';
        }
    }

    // Close the sidebar with the close button
    function w3_close() {
        mySidebar.style.display = "none";
    }
</script>

</body>
</html>
