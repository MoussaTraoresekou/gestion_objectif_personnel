<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <title>Inscription</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/style.css">
</head>
<body>

<div class="auth-container">

    <div class="auth-card">

        <h1>Créer un compte</h1>
        <p>Rejoignez votre coach personnel d’objectifs</p>

        <% if (request.getAttribute("error") != null) { %>
            <div class="alert error">
                <%= request.getAttribute("error") %>
            </div>
        <% } %>

        <form action="${pageContext.request.contextPath}/register" method="post">

            <div class="form-group">
                <label>Nom</label>
                <input type="text" name="nom" required>
            </div>

            <div class="form-group">
                <label>Prénom</label>
                <input type="text" name="prenom" required>
            </div>

            <div class="form-group">
                <label>Email</label>
                <input type="email" name="email" required>
            </div>

            <div class="form-group">
                <label>Mot de passe</label>
                <input type="password" name="motDePasse" required>
            </div>

            <button type="submit">Créer mon compte</button>
        </form>

        <p class="link">
            Déjà un compte ?
            <a href="${pageContext.request.contextPath}/login">Se connecter</a>
        </p>

    </div>

</div>

</body>
</html>