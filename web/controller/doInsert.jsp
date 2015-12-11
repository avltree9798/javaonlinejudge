<%@page import="java.util.Calendar"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>
<%@include file="Connect.jsp" %>
<%
    String title = request.getParameter("title");
    String content = request.getParameter("content");
    if(title.equals("") || title==null){
        response.sendRedirect("../announcement.jsp?msg=Title cannot be empty");
    }else if(content.equals("")||content==null){
        response.sendRedirect("../announcement.jsp?msg=Content cannot be empty");
    }else{
        DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
        Calendar cal = Calendar.getInstance();
        String tanggal = dateFormat.format(cal.getTime());
        String sql = "INSERT INTO announcement VALUES(null,?,?,?,?)";
        PreparedStatement ps = conn.prepareStatement(sql);
        ps.setString(1,title);
        ps.setString(2,tanggal);
        ps.setString(3,content);
        ps.setString(4,((ResultSet)session
                        .getAttribute("id_user")).getString("id"));
        ps.executeUpdate();
        response.sendRedirect("../index.jsp");
    }
%>