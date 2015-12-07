<%@page import="java.io.File"%>
<%@page import="java.io.InputStreamReader"%>
<%@page import="java.io.BufferedReader"%>
<%
    try{
        String pathToWebRoot = application.getRealPath("/");
        String dir = pathToWebRoot+"/WEB-INF/classes/1/";
        File userDir=new File(dir);
        Process p = Runtime.getRuntime().exec("java Main",null,userDir);
        out.print(p.exitValue());
        if(p.exitValue()==0){
            BufferedReader input = new BufferedReader(new InputStreamReader(p.getInputStream()));
            String line;
            while((line = input.readLine())!=null){
                out.print(line+"<br/>");
            }
            input.close();
            p.waitFor();
            int ret = p.exitValue();
        }else{
            BufferedReader input = new BufferedReader(new InputStreamReader(p.getErrorStream()));
            out.print(input.readLine());
        }
    }catch(Exception e){
        
    } 
%>