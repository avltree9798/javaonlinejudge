<%@include file="Connect.jsp" %>
<%
    String username = request.getParameter("username");
    String password = request.getParameter("password");
    ResultSet rs = st.executeQuery("SELECT * FROM user WHERE username = '"+username+"' AND password = '"+password+"' ");
    if(rs.next()){
        session.setAttribute("id_user", rs);
        response.sendRedirect("../index.jsp");
    }else{
        response.sendRedirect("../login.jsp?err=Username or Password wrong");
    }
%>