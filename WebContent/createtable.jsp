create table

</head>
<body style="background-color: rgb(6, 6, 6); color: rgb(0, 0, 0);"
	<%String name = request.getParameter("name");
			String rows = request.getParameter("rows");
			String cols = request.getParameter("cols");
			%>
	alink="#ee0000" link="#0000ee" vlink="#551a8b">
	<span style="color: rgb(253, 253, 253);">Hello <%=name%>. Here
		is your table
	</span>
	<br style="color: rgb(253, 253, 253);">
	<table
		style="text-align: left; width: 478px; height: 32px; color: rgb(253, 253, 253); background-color: rgb(6, 6, 6);"
		border="1" cellpadding="2" cellspacing="2">
		<tbody>
			<%
			if((Integer.parseInt(rows) <= 0) || (Integer.parseInt(cols) <= 0))
				response.sendRedirect("classexercise.jsp?Rows="+Integer.parseInt(rows)+"&Columns="+Integer.parseInt(cols)+"&Name="+name+"");
			for(int i = 1; i <= Integer.parseInt(rows); i++){
				out.print("<tr>");
				for(int j = 1; j <= Integer.parseInt(cols); j++){
					out.print("<td style=\"vertical-align: top;\">("+i+","+j+")<br></td>");
				}
				out.print("</tr>");	
			}
				%>
		</tbody>
	</table>
	<span style="color: rgb(243, 243, 243);"><br> </span>
	<br>
</body>
</html>