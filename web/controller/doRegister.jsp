<%@include file="Connect.jsp" %>
<%
    String username = request.getParameter("username");
    String email = request.getParameter("email");
    String name = request.getParameter("name");
    String password = request.getParameter("password");
    ResultSet rs = st.executeQuery("SELECT * FROM user where username = '"+username+"'");
    if(username.equals("")||username==null){
        response.sendRedirect("../register.jsp?err=Username cannot be empty");
    }else if(rs.next()){
        response.sendRedirect("../register.jsp?err=Username already taken");
    }else if(password.equals("") || password==null){
        response.sendRedirect("../register.jsp?err=Password cannot be empty");
    }else if(name.equals("")||name==null){
        response.sendRedirect("../register.jsp?err=Name cannot be empty");
    }else if(email.equals("") || email==null){
        response.sendRedirect("../register.jsp?err=Email cannot be empty");
    }else{
        String query = "INSERT INTO user VALUES(null,?,?,?,?,2)";
        PreparedStatement ps = conn.prepareStatement(query);
        ps.setString(1, name);
        ps.setString(2, email);
        ps.setString(3, password);
        ps.setString(4, username);
        ps.executeUpdate();
        response.sendRedirect("../login.jsp?err=Registration Complete");
    }
%>