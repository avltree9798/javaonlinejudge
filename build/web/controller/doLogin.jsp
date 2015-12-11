<%@include file="Connect.jsp" %>
<%
    String username = request.getParameter("username");
    String password = request.getParameter("password");
    String query = "SELECT * FROM user WHERE username = ? AND password = ? ";
    PreparedStatement ps = conn.prepareStatement(query);
    ps.setString(1, username);
    ps.setString(2, password);
    ResultSet rs = ps.executeQuery();
    if(rs.next()){
        session.setMaxInactiveInterval(86400);
        session.setAttribute("id_user", rs);
        response.sendRedirect("../index.jsp");
    }else{
        response.sendRedirect("../login.jsp?err=Wrong username or password");
    }
%>