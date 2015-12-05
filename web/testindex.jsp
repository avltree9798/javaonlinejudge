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
                <li><a href="problem.jsp"   class="current">Problem</a></li>
                <li><a href="scoreboard.jsp">Scoreboard</a></li>
                <li><a href="about.jsp">About</a></li>
                <%if(session.getAttribute("id_user")==null){out.print("<li><a href='login.jsp'>Login</a></li>");}%>
            </ul>
        </nav>
    </header>
    <section>
        <form method="POST" action="doCompile.jsp">
            Code:
            <textarea name="code" cols="50" rows="20"></textarea>
            <br/>
            Stdin:
            <textarea name="stdin"></textarea>
            <br/>
            <input type="submit" value="submit"/>
        </form>
    </section>
</body>
</html>