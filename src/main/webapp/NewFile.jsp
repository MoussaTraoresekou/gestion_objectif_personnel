<%@page import="java.sql.Connection"%>
<%@page import="util.DatabaseConnection"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Test DB</title>
</head>

<body>

<%
try {
    Connection cn = DatabaseConnection.getConnection();

    if (cn != null && !cn.isClosed()) {
        out.println("<h3 style='color:green;'>Connexion réussie à la base de données ✔</h3>");
    } else {
        out.println("<h3 style='color:red;'>Connexion échouée ❌</h3>");
    }

} catch (Exception e) {
    out.println("<h3 style='color:red;'>Erreur : " + e.getMessage() + "</h3>");
}
%>

</body>
</html>