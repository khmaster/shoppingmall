<%@page import="java.util.List"%>
<%@page import="order.OrderDAO"%>
<%@page import="product.ProductDAO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<%
	OrderDAO orderManager = OrderDAO.getInstance();
	List<Integer> orderNoList = orderManager.selectsOrder_NO();
	int orderlistCount = orderNoList.size();
	
	ProductDAO productManager = ProductDAO.getInstance();
	List<Integer> productNoList = productManager.selectsProduct_NO();
	int productlistCount = productNoList.size();
%>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>INSERT ORDER_PRODUCT</title>
</head>
<body>
	<form action="inserted_orderproduct.jsp" method="post">
		<table>
			<tr>
				<td>OP_ONO</td>
				<td>
					<select name="OP_ONO">
					<%
						for (int i=0; i<orderlistCount; i++) {
					%>
						<option value="<%=orderNoList.get(i)%>"><%=orderNoList.get(i) %></option>
					<%
						}
					%>
					</select>
				</td>
			</tr>
			<tr>
				<td>OP_PNO</td>
				<td>
					<select name="OP_PNO">
						<%
							for(int i=0; i<productlistCount; i++) {
						%>
							<option value="<%=productNoList.get(i)%>"><%=productNoList.get(i) %></option>
						<%
							}
						%>
					</select>
				</td>
			</tr>
			<tr>
				<td>OP_COUNT</td>
				<td><input type="number" min="1" max="10" required="required" name="OP_COUNT"></td>
			</tr>
			<tr>
				<td width="2"><input type="submit" value="INSERT"></td>
			</tr>
		</table>
	</form>
</body>
</html>