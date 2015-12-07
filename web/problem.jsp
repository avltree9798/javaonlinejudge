<%@page import="java.sql.ResultSet"%>
<%@include file="controller/Connect.jsp" %>
<%
    ResultSet rs = st.executeQuery("SELECT * FROM problem");
%>
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
                <li><a href="submission.jsp">Submission</a></li>
                <li><a href="about.jsp">About</a></li>
                <%
                    if(session.getAttribute("id_user")!=null){
                        if(((ResultSet)session.getAttribute("id_user")).getString("role").equals("1")){
                            out.print("<li><a href='createproblem.jsp'>Create Problem</a></li>");
                        }
                    }
                %>
                <%if(session.getAttribute("id_user")==null){out.print("<li><a href='login.jsp'>Login</a></li>");}else{out.print(((ResultSet)session.getAttribute("id_user")).getString("username"));}%>
            </ul>
        </nav>
    </header>
    <section>
        <div style="display: block;">
            <div id="headerProblem">
                <span style="width: 100%; margin-right: 100px;">#</span>
                <span style="width: 50%;">Title</span>
            </div>
            <% while(rs.next()){
            %>
            <div style="border-bottom: 1px solid lightgray;" onclick="window.location.href='view.jsp?id=<%=rs.getString("id")%>'">
                    <span style="width: 100%; margin-right: 100px;  "><%=rs.getString("id")%></span>
                    <span style="width: 50%;"><%=rs.getString("problem_name")%></span>
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