<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<jsp:useBean id="student" class="student.StudentInfo" scope="session"/>
<jsp:setProperty name="student" property="*"/>

<HTML>
<BODY>
<jsp:useBean id="user" class="student.StudentInfo" scope="session"/> 

You entered<BR>

Name: <%= student.getStudentname() %><BR>
Concentration: <%= student.getConcentration() %><BR>
Email: <%= student.getEmail() %><BR>

</BODY>
</HTML>