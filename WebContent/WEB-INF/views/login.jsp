<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Cadena Login</title>
</head>
<body>
	<form:form action="loginAction" method="POST">
    <table>
    
	
	<c:if test="${not empty SPRING_SECURITY_LAST_EXCEPTION}">
		<tr>
        <td></td>
        <td>${SPRING_SECURITY_LAST_EXCEPTION.message}</td>
      </tr>
	</c:if>
	
	<c:if test="${not empty param.logout}">
		<tr>
        <td></td>
        <td>You have been logged out.</td>
      </tr>
	</c:if>
      <tr>
        <td>Username</td>
        <td><input type="text" name="username"></td>
      </tr>
      <tr>
        <td>Password</td>
        <td><input type="password" name="password"></td>
      </tr>
      <tr>
        <td><button type="submit">Login</button></td>
      </tr>
    </table>
  </form:form>
  <br/>
</body>
</html>




