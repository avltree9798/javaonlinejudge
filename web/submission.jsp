<%@include file="controller/Connect.jsp"%>
<%@page import="java.sql.ResultSet"%>
<%
    ResultSet rs = st.executeQuery("SELECT s.id,username,verdict,problem_name FROM submission s JOIN user u ON s.id_user = u.id JOIN problem p ON s.id_problem = p.id order by s.id desc limit 35");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="en-US">
 
<head>
<meta name="viewport" content="width=device-width; initial-scale=1; maximum-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta http-equiv="refresh" content="120" >
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
                <li><a href="submission.jsp" class="current">Submission</a></li>
                <li><a href="about.jsp">About</a></li>
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
        <div style="display: block;">
            <div id="headerProblem">
                <b>
                <div style="width: 22%; display: inline-block;">ID Submission</div>
                <div style="width: 37%; display: inline-block;">Problem</div>
                <div style="width: 18%; display: inline-block;">Username</div>
                <div style="width: 15%; display: inline-block;">Verdict</div>
                </b>
            </div>
            <% while(rs.next()){
                
            %>
            <div style="border-bottom: 1px solid lightgray;">
                <div style="width: 22%; display: inline-block;"><%=rs.getString("id")%></div>
                <div style="width: 37%; display: inline-block;"><%=rs.getString("problem_name")%></div>
                <div style="width: 18%; display: inline-block;"><%=rs.getString("username")%></div>
                <div style="width: 15%; display: inline-block;"><%
                    String color = "";
                    if(rs.getString("verdict").equals("Accepted")){
                        color = "green";
                    }else if(rs.getString("verdict").equals("Wrong Answer")){
                        color = "red";
                    }else{
                        color = "blue";
                    }
                    out.print("<b><span style='color:"+color+";'>"+rs.getString("verdict")+"</span></b>");
                %></div>
            </div>
            <%
            }
            %>
        </div>
    </section>
        <footer>
            <center>AV Online Judge © 2015 <a style="color:blue;" href="http://www.fb.com/DreamingDelta">AV15-1</a> All Rights Reserved</center>
        </footer>
</body>
</html>