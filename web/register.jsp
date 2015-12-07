<%if(session.getAttribute("id_user")==null){%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="en-US">
 
<head>
<meta name="viewport" content="width=device-width; initial-scale=1; maximum-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>AV Online Judge</title>
<link rel="stylesheet" type="text/css" href="css/style.css"/>
</head>
<body>
<header>
    <a href="#" id="logos"></a>
        <nav>
            <a href="#" id="menu-icon"></a>
            <ul>
                <li><a href="index.jsp">Home</a></li>
                <li><a href="problem.jsp">Problem</a></li>
                <li><a href="submission.jsp">Submission</a></li>
                <li><a href="about.jsp">About</a></li>
                <li><a href="login.jsp"   class="current">Login</a></li>
            </ul>
        </nav>
    </header>
    <section>
        <form method="POST" action="controller/doRegister.jsp">
        <div id="logo">
        </div>
        <div id="register">
            <div id="headSection">
                <b>Register</b>
            </div>
            <table style="margin-top:15%;" align="center">
                    <tr>
                        <td><input type="text" name="username" placeholder="Username" id="modified"/></td>
                    </tr>
                    <tr>
                        <td><input type="password" name="password" placeholder="Password" id="modified"/></td>
                    </tr>
                    <tr>
                        <td><input type="text" name="name" placeholder="Fullname" id="modified"/></td>
                    </tr>
                    <tr>
                        <td><input type="email" name="email" placeholder="Email" id="modified"/></td>
                    </tr>
                    <tr>
                        <td colspan="3" align="center">
                            <input type="submit" id="modifiedButton" value="Register"style="background-color: orange;color:white;"/>
                                or
                                <input type="button" id="modifiedButton" onclick="window.location.href='login.jsp';" value="Login" style="background-color: white;color:black;"/>
                        </td>
                    </tr>
                </table>
            <span>
                <%if(request.getParameter("err")!=null)out.print("<span style='color:red;''><center>"+request.getParameter("err")+"</center></span>");%>
            </span>
            </div>
        </form>
    </section>
</body>
</html>
<%}else{
    response.sendRedirect("index.jsp");
}%>