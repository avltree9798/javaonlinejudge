<%
    if(session.getAttribute("id_user")!=null){
        ResultSet rs = (ResultSet)session.getAttribute("id_user");
%>
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
                            out.print("<li><a href='announcement.jsp'>Create Announcement</a></li><li><a href='createproblem.jsp'>Create Problem</a></li>");
                        }
                    }
                %>
                <%if(session.getAttribute("id_user")==null){out.print("<li><a href='login.jsp'>Login</a></li>");}else{out.print("<li><a href='editprofile.jsp'  class='current'>"+((ResultSet)session.getAttribute("id_user")).getString("username")+"</a></li><li><a href='logout.jsp'>Logout</a></li>");}%>
            </ul>
        </nav>  
    </header>
    <section>
        <form method="POST" action="controller/doUpdate.jsp">
            <input type="hidden" name="id" value="<%=rs.getString("id")%>"/>
            <table>
                    <tr>
                    <td colspan="3"><center><h3>Edit Profile</h3></center></td>
                </tr>
                <tr>
                    <td valign="top">Name</td>
                    <td valign="top">:</td>
                    <td valign="top"><input type="text" name="name" placeholder="<%=rs.getString("name")%>" value="<%=rs.getString("name")%>"/></td>
                </tr>
                <tr>
                    <td valign="top">Email</td>
                    <td valign="top">:</td>
                    <td valign="top"><input type="email" name="email" placeholder="<%=rs.getString("email")%>" value="<%=rs.getString("email")%>"/></td>
                </tr>
                <tr>
                    <td valign="top">Password</td>
                    <td valign="top">:</td>
                    <td valign="top"><input type="password" name="password"/></td>
                </tr>
                <tr>
                    <td colspan="3" align="center">
                        <input type="submit" value="Save"/>
                        <input type="reset"/>
                    </td>
                </tr>
            </table>
                <%if(request.getParameter("msg")!=null)out.print("<span style='color:red;''><center>"+request.getParameter("msg")+"</center></span>");%>
        </form>
    </section>
        <footer>
            <center>AV Online Judge © 2015 <a style="color:blue;" href="http://www.fb.com/DreamingDelta">AV15-1</a> All Rights Reserved</center>
        </footer>
</body>
</html>
            <%}else{out.print("Hoho");}%>