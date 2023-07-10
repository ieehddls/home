<%@ page import="java.sql.*" %>
<%
    Connection conn = null;
    
    try{
        String url = "jdbc:oracle:thin:@192.168.0.31:1521:xe";
        String user = "reocomedu1";
        String passwd = "reocom1004";

        Class.forName("oracle.jdbc.driver.OracleDriver");
        conn = DriverManager.getConnection(url, user, passwd);
        //out.println("연결됨");
    }catch(SQLException e){
        //out.println(e.getMessage());
    }catch(Exception e){
        //out.println(e.toString());
    }
%>