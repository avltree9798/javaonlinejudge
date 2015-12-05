<%@page import="java.sql.ResultSet"%>
<%@include file="controller/Connect.jsp" %>
<%
    String id = request.getParameter("id");
    ResultSet rs = st.executeQuery("SELECT * FROM problem where id = "+id);
    if(rs.next()){
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
        <div style="display: block; border:1px solid orange; height: auto; padding-bottom: 30px;">
            <center><h1><%=rs.getString("problem_name")%></h1></center>
            Desc:
            <center><%=rs.getString("problem_desc")%></center>
            Input :
            <table border="1">
                <tr>
                    <td style="white-space: normal;"><%
                        String katak = rs.getString("sample_input");
                        String kataks[] = katak.split("\n");
                        for(int i=0;i<kataks.length;i++){
                            out.print("<span style='display:block;'>"+kataks[i]+"</span>");
                        }
                    %></td>
                </tr>
            </table>
            Output :
            <table border="1" style="margin-bottom: 20px;">
                <tr>
                    <td><%
                        String kata = rs.getString("sample_output");
                        String katas[] = kata.split("\n");
                        for(int i=0;i<katas.length;i++){
                            out.print("<span style='display:block;'>"+katas[i]+"</span>");
                        }
                    %></td>
                </tr>
            </table>
                    <%if(session.getAttribute("id_user")==null){}else{out.print("<center><button id='modifiedButton' style='background-color: orange;color:white;' onclick='window.location.href=\"submit.jsp?id="+rs.getString("id")+"\"'>Submit your answer here</button></center>");}%>
        </div>
    </section>
        <footer>
            <center>AV Online Judge © 2015 <a style="color:blue;" href="http://www.fb.com/DreamingDelta">AV15-1</a> All Rights Reserved</center>
        </footer>   
</body>
</html>
                <%
    }
                %>