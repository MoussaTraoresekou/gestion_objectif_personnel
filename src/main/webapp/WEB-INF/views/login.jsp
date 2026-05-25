<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <title>Connexion</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/style.css">
</head>
<body>

<div class="auth-container">

    <div class="auth-card">

        <h1>Connexion</h1>
        <p>Connectez-vous à votre espace personnel</p>

        <% if (request.getAttribute("error") != null) { %>
            <div class="alert error">
                <%= request.getAttribute("error") %>
            </div>
        <% } %>

        <% if (request.getAttribute("success") != null) { %>
            <div class="alert success">
                <%= request.getAttribute("success") %>
            </div>
        <% } %>

        <form action="${pageContext.request.contextPath}/login" method="post">

            <div class="form-group">
                <label>Email</label>
                <input type="email" name="email" required>
            </div>

            <div class="form-group">
                <label>Mot de passe</label>
                <input type="password" name="motDePasse" required>
            </div>

            <button type="submit">Se connecter</button>
        </form>

        <p class="link">
            Pas encore de compte ?
            <a href="${pageContext.request.contextPath}/register">Créer un compte</a>
        </p>

    </div>

</div>

</body>
</html>