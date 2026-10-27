<%@ page language="java" 
	contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    session="false"
    errorPage="WEB-INF/view/error.jsp"
    buffer="none"%>
    
<%-- contentType="text/plain; charset=UTF-8"   --> This will show a plain text on the browser
	 session="false"   --> We will not be able to access the session implicit obj on this page
	 errorPage="WEB-INF/view/error.jsp"    --> If any exception occurs then this error page is called.
	 										   In error.jsp we had mentioned isErrorPage attribute to true.
 --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%@ include file="header.jsp" %>
	
	<h3> This is my main page </h3>

	<%	for (int i = 0; i < 10; i++) {
			out.print(i + " "); // out is a JSPWriter implicit obj
			
			// uncomment the below if block to create an exception
			// if (i == 9) {
				// String k = null; // here k is null, so print will throw exception
				// k.length();
			// }
			
			// When buffer="8KB"  (by default)  --> Also when I run this application, the error page is shown. 
			// But it goes through this page first and then when exception occurs the error.jsp is called.
			
			// When buffer="none"    --> Then the page works as a live stream. The response comes immediately.
	}
	%>
	
	<%@ include file="footer.jsp" %>
	<!-- include directive helps to inlude a jsp file into an another. Here we have included the header.jsp and footer.jsp -->

</body>
</html>