<%@page import="product.ProductDTO"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="product.ProductDAO"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="EUC-KR"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>top</title>
</head>

<body>
	<a href="order.jsp">ordertest</a>
	<a href="bottom.jsp">bottom</a>
	<a href="inner.jsp">inner</a>
	<%
		int top_no = 0;
		ProductDAO productManager = ProductDAO.getInstance();
		List<ProductDTO> topList = new ArrayList<ProductDTO>();
		topList = productManager.selectsProduct_CNO(top_no);
		int topListSize = topList.size();
	%>

	<table border="1">
		<%
			for (int i = 0; i < topListSize; i++) {
		%>
		<tr>
			<td>name : <%=topList.get(i).getP_name()%><br /> price : <%=topList.get(i).getP_price()%><br /></td>
		</tr>
		<%
			}
		%>
	</table>
</body>
</html>