<%@page import="java.sql.ResultSet"%>
<%@include file="Connect.jsp" %>
<%
  String problem_name = request.getParameter("problem_name");
  String problem_desc = request.getParameter("problem_desc");
  String sample_input = request.getParameter("sample_input");
  String sample_output = request.getParameter("sample_output");
  String test_input = request.getParameter("test_input");
  String test_output = request.getParameter("test_output");
  if(problem_name==null||problem_name.replaceAll("\\s", "").equals("")){
      response.sendRedirect("../createproblem.jsp?msg=Problem name cannot be empty");
  }else if(problem_desc==null||problem_desc.replaceAll("\\s", "").equals("")){
      response.sendRedirect("../createproblem.jsp?msg=Problem description cannot be empty");
  }else if(test_output==null||test_output.replaceAll("\\s", "").equals("")){
      response.sendRedirect("../createproblem.jsp?msg=Test output cannot be empty");
  }else{
    String created_by = ((ResultSet)session.getAttribute("id_user")).getString("id");
    String query = "INSERT INTO problem VALUES(null,?,?,?,?,?,?,?)";
    PreparedStatement ps = conn.prepareStatement(query);
    ps.setString(1, problem_name);
    ps.setString(2, problem_desc);
    ps.setString(3, sample_input);
    ps.setString(4, sample_output);
    ps.setString(5, test_input);
    ps.setString(6, test_output);
    ps.setString(7, created_by);
    ps.executeUpdate();
    response.sendRedirect("../problem.jsp");
  }
%>