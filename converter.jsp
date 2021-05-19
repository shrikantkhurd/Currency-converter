<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<div align="center" style="padding: 50px;">
		<form method="get">
			<h2>CURRENCY CONVERTER</h2>
			<fieldset
				style="padding: 50px; margin-left: 300px; margin-right: 300px;">
				<legend>
					<b>Currency Converter</b>
				</legend>
				<%
					float amt = Float.parseFloat(request.getParameter("amount"));
					String s1 = request.getParameter("currency1");
					String s2 = request.getParameter("currency");

					float result = 0;
					if (s1.equals("Rupee") && s2.equals("Rupee")) {
						result = (float) (amt);
						out.println("<h2>" + amt + "  Indian Rupee equals : " + result + " Indian Rupee</h2>");
					}
					if (s1.equals("Rupee") && s2.equals("Dollar")) {
						result = (float) (0.014 * amt);
						out.println("<h2>" + amt + "  Indian Rupee equals : " + result + " United States Dollar</h2>");
					}
					if (s1.equals("Rupee") && s2.equals("Euro")) {
						result = (float) (0.011 * amt);
						out.println("<h2>" + amt + "  Indian Rupee equals : " + result + " Euro</h2>");
					}
					if (s1.equals("Dollar") && s2.equals("Rupee")) {
						result = (float) (amt * 73);
						out.println("<h2>" + amt + "  United States Dollar equals : " + result + " Indian Rupee</h2>");
					}
					if (s1.equals("Dollar") && s2.equals("Dollar")) {
						result = (float) (amt);
						out.println("<h2>" + amt + "  United States Dollar equals : " + result + " United States Dollar</h2>");
					}
					if (s1.equals("Dollar") && s2.equals("Euro")) {
						result = (float) (0.82 * amt);
						out.println("<h2>" + amt + "  United States Dollar equals : " + result + " Euro</h2>");
					}
					if (s1.equals("Euro") && s2.equals("Rupee")) {
						result = (float) (amt * 88.96);
						out.println("<h2>" + amt + "  Euro equals : " + result + " Indian Rupee</h2>");
					}
					if (s1.equals("Euro") && s2.equals("Dollar")) {
						result = (float) (1.21 * amt);
						out.println("<h2>" + amt + "  Euro equals : " + result + " United States Dollar</h2>");
					}
					if (s1.equals("Euro") && s2.equals("Euro")) {
						result = (float) (amt);
						out.println("<h2>" + amt + "  Euro equals : " + result + " Euro</h2>");
					}
				%>
				<a href="index.jsp"> <input type="button" value="Back" />
				</a>
			</fieldset>
		</form>
	</div>
</body>
</html>