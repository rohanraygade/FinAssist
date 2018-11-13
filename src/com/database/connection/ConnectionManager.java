package com.database.connection;
import java.sql.*;  
class ConnectionManager{  
public static void main(String args[]){  
try{  
//step1 load the driver class  
Class.forName("oracle.jdbc.driver.OracleDriver");  
  
//step2 create  the connection object  
Connection con=DriverManager.getConnection(  
"jdbc:oracle:thin:@localhost:1521:xe","system","manager");  
  
//step3 create the statement object  
PreparedStatement stmt=con.prepareStatement("insert into finassistuser values('Chinmay','Deshpande','24chinmay@gmail.com','24chinmay','24chinmay')");  
 

  
//step5 close the connection object  
con.close();  
  System.out.println("end");
}catch(Exception e){ System.out.println(e);}  
  
}  
}  