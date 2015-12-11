<%@page import="java.sql.ResultSet"%>
<%@include file="controller/Connect.jsp" %>
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
                <%
                    if(session.getAttribute("id_user")!=null){
                        if(((ResultSet)session.getAttribute("id_user")).getString("role").equals("1")){
                            out.print("<li><a href='announcement.jsp' class='current'>Create Announcement</a></li><li><a href='createproblem.jsp'>Create Problem</a></li>");
                        }
                    }
                %>
                <%if(session.getAttribute("id_user")==null){out.print("<li><a href='login.jsp'>Login</a></li>");}else{out.print("<li><a href='editprofile.jsp'>"+((ResultSet)session.getAttribute("id_user")).getString("username")+"</a></li><li><a href='logout.jsp'>Logout</a></li>");}%>
            </ul>
        </nav>  
    </header>
    <section>
        <%if(request.getParameter("msg")!=null)out.print("<span style='color:red;''><center>"+request.getParameter("msg")+"</center></span>");%>
        <form method="POST" action="controller/doInsert.jsp">
            <table>
                <tr>
                    <td colspan="3"><center><h3>Create New Announcement</h3></center></td>
                </tr>
                <tr>
                    <td valign="top">Title</td>
                    <td valign="top">:</td>
                    <td valign="top"><input type="text" name="title"/></td>
                </tr>
                <tr>
                    <td valign="top">Content</td>
                    <td valign="top">:</td>
                    <td valign="top"><textarea name="content" rows="10" cols="50"></textarea></td>
                </tr>
                <tr>
                    <td colspan="3" align="center">
                        <input type="submit" value="Submit Problem"/>
                        <input type="reset"/>
                    </td>
                </tr>
            </table>
        </form>
    </section>
        <footer>
            <center>AV Online Judge © 2015 <a style="color:blue;" href="http://www.fb.com/DreamingDelta">AV15-1</a> All Rights Reserved</center>
        </footer>
</body>
</html>