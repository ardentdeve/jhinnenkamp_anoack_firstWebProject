classexercise

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>classexercise.</title>
</head>
<body>
	<br> Please enter the dimensions of the desired table below:
	<form action="createtable.jsp" name="table">
		<table style="text-align: left; width: 100%;" border="1"
			cellpadding="2" cellspacing="2">
			<tbody>
				<%
				String name = request.getParameter("Name");
				if(name!=null){
					int rows = Integer.parseInt(request.getParameter("Rows"));
					int columns = Integer.parseInt(request.getParameter("Columns"));		
					if(rows < 1){
						out.print("Hello "+name+", PLEASE PROVIDE A ROW VALUE >=1");
					}
					else
						out.print("Hello "+name+", PLEASE PROVIDE COLUMN VALUE >=1");
				}
				%>
				<tr>
					<td style="vertical-align: top;">Enter your name<br>
					</td>
					<td style="vertical-align: top;"><input name="name" , msg><br>
					</td>
				</tr>
				<tr>
					<td style="vertical-align: top;">Enter number of rows<br>
					</td>
					<td style="vertical-align: top;"><input value="1" name="rows"></td>
				</tr>
				<tr>
					<td style="vertical-align: top;">Enter number of columns<br>
					</td>
					<td style="vertical-align: top;"><input value="1" name="cols"></td>
				</tr>
				<tr>
					<td style="vertical-align: top;"><input accesskey="S"
						name="submit" value="Submit" type="submit"></td>
					<td style="vertical-align: top;"><input accesskey="R"
						name="reset" value="Reset" type="reset"></td>
				</tr>
			</tbody>
		</table>
		<br>
	</form>
</body>
</html>