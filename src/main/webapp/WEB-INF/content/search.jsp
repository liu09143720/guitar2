<%@ page contentType="text/html; charset=UTF-8" language="java"
	errorPage=""%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
	"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>查询吉他</title>
</head>
<body>	
	<h3>查询吉他</h3>
	<s:form action="searchGuitar ">
		<%-- 	<s:textfield name="serialNumber" label="serialNumber" /> --%>
		<%-- 	<s:textfield name="price" label="price"/> --%>
		<s:textfield name="builder" label="builder" />
		<s:textfield name="model" label="model" />
		<s:textfield name="type" label="type" />
		<s:textfield name="numStrings" label="numStrings" />
		<s:textfield name="backWood" label="backWood" />
		<s:textfield name="topWood" label="topWood" />
		<tr align="center">
			<td colspan="2"><s:submit value="查询" theme="simple" /> <s:reset
					value="重设" theme="simple" /></td>
		</tr>
	</s:form>
	<h3>查询结果：</h3>
	<table width="640" border="1">
		<tr align="center">
			<td>serialNumber</td>
			<td>price</td>
			<td>builder</td>
			<td>model</td>
			<td>type</td>
			<td>numStrings</td>
			<td>backWood</td>
			<td>topWood</td>
		</tr>
		<tr align="center" bgcolor="#EED8AE">
			<td>${requestScope.guitar.serialNumber}</td>
			<td>${requestScope.guitar.price}</td>
			<td>${requestScope.guitar.getSpec().builder}</td>
			<td>${requestScope.guitar.getSpec().model}</td>
			<td>${requestScope.guitar.getSpec().type}</td>
			<td>${requestScope.guitar.getSpec().numStrings}</td>
			<td>${requestScope.guitar.getSpec().backWood}</td>
			<td>${requestScope.guitar.getSpec().topWood}</td>
		</tr>
	</table>
</body>
</html>
