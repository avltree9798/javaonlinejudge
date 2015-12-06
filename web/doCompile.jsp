<%@page import="java.util.Calendar"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>
<%@include file="controller/Connect.jsp" %>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.io.File"%>
<%@page import="java.io.InputStreamReader"%>
<%@page import="java.io.BufferedReader"%>
<%@page import="java.io.FileOutputStream"%>
<%@page import="java.io.PrintWriter"%>
<%
    String code = request.getParameter("code");
    code = code.replace("System.in","new java.io.FileInputStream(\"stdin.dat\")");
    String codes[] = code.split("\n");
    code="";
    for(int i=0;i<codes.length;i++){;
        String a = codes[i];
        if(a.replaceAll("\\s","").contains("publicstaticvoidmain")){
            if(!a.contains("throws")){
                codes[i]=codes[i].replaceAll("\\{", "");
                codes[i]+=" throws Exception {";
            }
        }
        code+=codes[i]+"\n";
    }    
    String id = request.getParameter("id");
    ResultSet rs = st.executeQuery("SELECT * FROM submission");
    int noSubmit = (rs.last())?Integer.parseInt(rs.getString("id"))+1:1;
    ResultSet rs2 = st.executeQuery("SELECT * FROM problem WHERE id = "+id);
    rs2.next();
    String stdin = rs2.getString("test_input");
    String pathToWebRoot = application.getRealPath("/");
    String dir = pathToWebRoot+"/WEB-INF/classes/"+noSubmit+"/";
    File userDir=new File(dir);
    userDir.mkdir();
    try{
        String verdict="";
        DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
        Calendar cal = Calendar.getInstance();
        String tanggal = dateFormat.format(cal.getTime());
        PrintWriter pw = new PrintWriter(new FileOutputStream(dir+"Main.java"));
        PrintWriter pa = new PrintWriter(new FileOutputStream(dir+"stdin.dat"));
        pw.append(code);
        pa.append(stdin);
        pw.close();
        pa.close();
        Process p2 = Runtime.getRuntime().exec("javac Main.java",null,userDir);
        p2.waitFor();
        Process p = Runtime.getRuntime().exec("java Main",null,userDir);
        BufferedReader input = new BufferedReader(new InputStreamReader(p.getInputStream()));
        String line;
        String answer="";
        while((line = input.readLine())!=null){
            answer+=line;
        }
        input.close();
        p.waitFor();
        int ret = p.exitValue();
        if(p2.exitValue()==0){
            if(ret==0){
                String answerFromCase = rs2.getString("test_output");
                if(answer.replaceAll("\\s","").equals(answerFromCase.replaceAll("\\s",""))){
                    verdict = "Accepted";
                }else{
                    verdict = "Wrong Answer";
                }
                //out.print(answer.replaceAll("\\s","")+"<br/>"+answerFromCase.replaceAll("\\s",""));
                st.executeUpdate("INSERT INTO submission(id,submission_date,id_problem,id_user,verdict) VALUES("+noSubmit+",'"+tanggal+"',"+id+","+((ResultSet)session
                        .getAttribute("id_user")).getString("id")+",'"+verdict+"')");
                out.print(verdict);
            }else{
                st.executeUpdate("INSERT INTO submission(id,submission_date,id_problem,id_user,verdict) VALUES("+noSubmit+",'"+tanggal+"',"+id+","+((ResultSet)session
                        .getAttribute("id_user")).getString("id")+",'Runtime Error')");
                out.print("Runtime Error");
            }
        }else{
            verdict = "Compile Error";
            st.executeUpdate("INSERT INTO submission(id,submission_date,id_problem,id_user,verdict) VALUES("+noSubmit+",'"+tanggal+"',"+id+","+((ResultSet)session
                        .getAttribute("id_user")).getString("id")+",'"+verdict+"')");
        }
    }catch(Exception e){
        out.print(e.getMessage());
    }
    response.sendRedirect("submission.jsp");
%>