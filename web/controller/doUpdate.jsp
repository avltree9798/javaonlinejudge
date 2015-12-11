<%@include file="Connect.jsp" %>
<%
    String id = request.getParameter("id");
    String name = request.getParameter("name");
    String email = request.getParameter("email");
    String password = request.getParameter("password");
    if(name==null || name.replaceAll("\\s","").equals("")){
        response.sendRedirect("../editprofile.jsp?msg=Name cannot be empty");
    }else if(email==null || email.replaceAll("\\s","").equals("")){
        response.sendRedirect("../editprofile.jsp?msg=Name cannot be empty");
    }else{
        String query = "SELECT * FROM user WHERE email = ?";
        PreparedStatement ps = conn.prepareStatement(query);
        ps.setString(1, email);
        ResultSet rs  = ps.executeQuery();
        if(rs.next() && !rs.getString("id").equals(id)){
            response.sendRedirect("../editprofile.jsp?msg=Email already registered");
        }else{
            String sql = "";
            PreparedStatement pss = null;
            if(password==null||password.equals("")){
                sql = "UPDATE user SET Name = ?, Email = ? WHERE id = "+id;
                pss = conn.prepareStatement(sql);
                pss.setString(1, name);
                pss.setString(2, email);
            }else{
                sql = "UPDATE user SET Name = ?, Email = ?, Password = ? WHERE id = "+id;
                pss = conn.prepareStatement(sql);
                pss.setString(1, name);
                pss.setString(2, email);
                pss.setString(3, password);
            }
            pss.executeUpdate();
            rs.close();
            ResultSet rs2 = st.executeQuery("SELECT * FROM user where id = "+id);
            rs2.next();
            session.setAttribute("id_user", rs2);
            response.sendRedirect("../editprofile.jsp?msg=Success");
        }
    }
%>