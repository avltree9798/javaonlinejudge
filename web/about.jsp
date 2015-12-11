<%@page import="java.sql.ResultSet"%>
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
                <li><a href="about.jsp"  class="current">About</a></li>
                <%
                    if(session.getAttribute("id_user")!=null){
                        if(((ResultSet)session.getAttribute("id_user")).getString("role").equals("1")){
                            out.print("<li><a href='announcement.jsp'>Create Announcement</a></li><li><a href='createproblem.jsp'>Create Problem</a></li>");
                        }
                    }
                %>
                <%if(session.getAttribute("id_user")==null){out.print("<li><a href='login.jsp'>Login</a></li>");}else{out.print("<li><a href='editprofile.jsp'>"+((ResultSet)session.getAttribute("id_user")).getString("username")+"</a></li><li><a href='logout.jsp'>Logout</a></li>");}%>
            </ul>
        </nav>
    </header>
    <section>
        <div id="about">
            <div id="headSection">
                About
            </div>
            <div style="padding-left: 20px; padding-top: 10px;">
                AV Online Judge is the best Online Judge for Java Programmer
                <p>Judge System</p>
                <p>This online judge uses standard input and standard output as the I/O method. Standard error will also be considered in standard output stream.</p>
                <p>Available Verdicts:</p>
                <p><b>Accepted</b>: Your program is correct.</p>
                <p><b>Wrong Answer</b>: Your program produced incorrect output.</p>
                <p><b>Compile Error</b>: Your program can't be compiled.</p>
                <p><b>Runtime Error</b>: Your program crashed during execution (e.g. segmentation fault, floating point exception, etc.)</p>
            </div>
        </div>
    </section>
</body>
</html>