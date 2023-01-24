<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@page import="java.sql.*" %>
<%
if(request.getParameter("insert") != null)
{
      String img = request.getParameter("product_img");
    	String pname = request.getParameter("product_name");
    	long price = Long.parseLong(request.getParameter("product_price"));
    	int qty= Integer.parseInt(request.getParameter("qty"));
    	
    	// insert products in cart table
    	try{
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/bikers_arena","root","");
			String qry = "insert into cart(product_name,product_img,product_price,qty) values(?,?,?,?)";
			PreparedStatement ps = con.prepareStatement(qry);
			
			ps.setString(1, pname);
			ps.setString(2, img);
			ps.setLong(3, price);
			ps.setInt(4, qty);
			if(ps.executeUpdate()>0)
			{
				 out.print("<script>alert('Product added successfully.')</script>");
				 //RequestDispatcher rd=request.getRequestDispatcher("viewcart.jsp"); 
				 //rd.forward(request, response); 
			}
			else
			{
				out.print("<script>alert('Something went wrong.')</script>");
			}
	    }
	    catch(Exception e)
	    {
	    	System.out.println(e);
	    }
}
%>
</body>
</html>