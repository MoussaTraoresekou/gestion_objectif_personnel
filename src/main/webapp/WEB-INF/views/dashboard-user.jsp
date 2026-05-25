<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="fr">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>N'KA Lagnini – Dashboard Utilisateur</title>
  <!-- Bootstrap 5 -->
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet"/>
  <!-- Bootstrap Icons -->
  <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css" rel="stylesheet"/>
  <!-- Styles personnalisés -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/dashboard-user.css"/>
</head>

<body>

<aside class="sidebar" id="sidebar">

    <!-- Logo -->
    <div class="sidebar-logo">
        <img src="${pageContext.request.contextPath}/assets/images/logo.png"
             alt="logo">

        <div class="logo-text">
            <h4>N'KA</h4>
            <span>Lagnini</span>
        </div>
    </div>

    <!-- Bouton fermer -->
    <div class="sidebar-close-btn" id="toggleSidebar">
        <i class="bi bi-layout-sidebar-reverse"></i>
        <span class="menu-text">Fermer</span>
    </div>

    <!-- Menu -->
    <nav class="sidebar-menu">

        <a href="#" class="nav-item-link active">
            <i class="bi bi-house"></i>
            <span class="menu-text">Accueil</span>
        </a>

        <a href="#" class="nav-item-link">
            <i class="bi bi-bullseye"></i>
            <span class="menu-text">Mes objectifs</span>
        </a>

        <a href="#" class="nav-item-link">
            <i class="bi bi-calendar-event"></i>
            <span class="menu-text">Planning</span>
        </a>

        <a href="#" class="nav-item-link">
            <i class="bi bi-lightning"></i>
            <span class="menu-text">Actions</span>
        </a>

        <a href="#" class="nav-item-link">
            <i class="bi bi-bar-chart"></i>
            <span class="menu-text">Progression</span>
        </a>

        <a href="#" class="nav-item-link">
            <i class="bi bi-patch-check"></i>
            <span class="menu-text">Badges</span>
        </a>

        <a href="#" class="nav-item-link">
            <i class="bi bi-bell"></i>
            <span class="menu-text">Notifications</span>
        </a>

        <a href="#" class="nav-item-link">
            <i class="bi bi-person"></i>
            <span class="menu-text">Profil</span>
        </a>

        <a href="#" class="nav-item-link">
            <i class="bi bi-gear"></i>
            <span class="menu-text">Paramètres</span>
        </a>

    </nav>

    <!-- Déconnexion -->
    <div class="logout-section">
        <a href="#" class="nav-item-link">
            <i class="bi bi-box-arrow-right"></i>
            <span class="menu-text">Déconnexion</span>
        </a>
    </div>

</aside>

<main class="main-content">

  <!-- TOPBAR -->
  <div class="topbar">
    <div class="topbar-greeting">
      <h2>Bonjour, Idrissa 👋</h2>
      <p>Resté Motivé et avancé chaque jour !</p>
    </div>
    <div class="topbar-right">
      <div class="notif-icon">
        <i class="bi bi-bell"></i>
        <span class="badge-dot">1</span>
      </div>
      <div class="avatar">I</div>
    </div>
  </div>

  <!-- STAT CARDS -->
  <div class="row g-3 mb-4">
    <div class="col-6 col-md-3">
      <div class="stat-card">
        <div class="label">
          Objectifs actifs
          <span class="icon-wrap blue"><i class="bi bi-bullseye"></i></span>
        </div>
        <div class="value">5</div>
        <a href="#" class="voir-link">Voir &rsaquo;</a>
      </div>
    </div>
    <div class="col-6 col-md-3">
      <div class="stat-card">
        <div class="label">
          Actions du jour
          <span class="icon-wrap green"><i class="bi bi-lightning-fill"></i></span>
        </div>
        <div class="value">8</div>
        <a href="#" class="voir-link">Voir &rsaquo;</a>
      </div>
    </div>
    <div class="col-6 col-md-3">
      <div class="stat-card">
        <div class="label">
          Taux de réussite
          <span class="icon-wrap purple"><i class="bi bi-graph-up"></i></span>
        </div>
        <div class="value">72%</div>
        <a href="#" class="voir-link">Voir &rsaquo;</a>
      </div>
    </div>
    <div class="col-6 col-md-3">
      <div class="stat-card">
        <div class="label">
          Badges obtenus
          <span class="icon-wrap orange"><i class="bi bi-patch-check-fill"></i></span>
        </div>
        <div class="value">10</div>
        <a href="#" class="voir-link">Voir &rsaquo;</a>
      </div>
    </div>
  </div>

  <!-- OBJECTIVES + RIGHT PANEL -->
  <div class="row g-3 mb-4">

    <!-- Objectives -->
    <div class="col-12 col-lg-7">
      <div class="section-card">
        <div class="d-flex align-items-center justify-content-between mb-3">
          <span class="section-title">Aperçu de vos objectifs</span>
          <button class="filter-btn">Tous <i class="bi bi-chevron-down" style="font-size:10px;"></i></button>
        </div>

        <div class="obj-item">
          <div class="obj-icon sport">🏃</div>
          <div class="obj-info">
            <div class="obj-name">Courir un semi-marathon</div>
            <div class="obj-cat">Sport</div>
            <div class="progress">
              <div class="progress-bar bar-sport" style="width:75%"></div>
            </div>
          </div>
          <div class="obj-pct">75%</div>
        </div>

        <div class="obj-item">
          <div class="obj-icon eco">💰</div>
          <div class="obj-info">
            <div class="obj-name">Economiser 1 000 000 FCFA</div>
            <div class="obj-cat">Économie</div>
            <div class="progress">
              <div class="progress-bar bar-eco" style="width:60%"></div>
            </div>
          </div>
          <div class="obj-pct">60%</div>
        </div>

        <div class="obj-item">
          <div class="obj-icon learn">📘</div>
          <div class="obj-info">
            <div class="obj-name">Apprendre Java</div>
            <div class="obj-cat">Apprentissage</div>
            <div class="progress">
              <div class="progress-bar bar-learn" style="width:40%"></div>
            </div>
          </div>
          <div class="obj-pct">40%</div>
        </div>

        <div class="obj-item">
          <div class="obj-icon dev">📚</div>
          <div class="obj-info">
            <div class="obj-name">Lire 12 Livres cette année</div>
            <div class="obj-cat">Développement personnel</div>
            <div class="progress">
              <div class="progress-bar bar-dev" style="width:30%"></div>
            </div>
          </div>
          <div class="obj-pct">30%</div>
        </div>
      </div>
    </div>

    <!-- Right panel -->
    <div class="col-12 col-lg-5 d-flex flex-column gap-3">

      <!-- Actions du jour -->
      <div class="actions-card">
        <div class="panel-header">
          <span class="section-title">Actions du jour</span>
          <a href="#" class="voir-toutes">Voir toutes</a>
        </div>
        <div class="action-item done">
          <input class="form-check-input" type="checkbox" checked/>
          30 mn de course
        </div>
        <div class="action-item done">
          <input class="form-check-input" type="checkbox" checked/>
          Etudier Java (1h)
        </div>
        <div class="action-item">
          <input class="form-check-input" type="checkbox"/>
          Lire 20 pages
        </div>
      </div>

      <!-- Prochains rappels -->
      <div class="reminders-card">
        <div class="panel-header">
          <span class="section-title">Prochains rappels</span>
        </div>
        <div class="reminder-item">
          <div>
            <div class="reminder-time">18:00</div>
            <div class="reminder-name">Course a pied</div>
          </div>
          <span class="auj-badge">Aujourd'hui</span>
        </div>
        <div class="reminder-item">
          <div>
            <div class="reminder-time">20:00</div>
            <div class="reminder-name">Lire 20 pages</div>
          </div>
          <span class="auj-badge">Aujourd'hui</span>
        </div>
      </div>

    </div>
  </div>

  <!-- STATISTIQUES -->
  <div class="section-title mb-3">Statistiques</div>
  <div class="row g-3">
    <div class="col-12 col-md-4">
      <div class="stat-bottom-card">
        <div class="stat-bottom-icon">🌤️</div>
        <div class="stat-bottom-info">
          <div class="lbl">Jours consécutifs</div>
          <div class="val">14 jours 🔥</div>
        </div>
      </div>
    </div>
    <div class="col-12 col-md-4">
      <div class="stat-bottom-card">
        <div class="stat-bottom-icon">🕐</div>
        <div class="stat-bottom-info">
          <div class="lbl">Temps total</div>
          <div class="val">128 h</div>
        </div>
      </div>
    </div>
    <div class="col-12 col-md-4">
      <div class="stat-bottom-card">
        <div class="stat-bottom-icon">🎯</div>
        <div class="stat-bottom-info">
          <div class="lbl">Objectifs terminés</div>
          <div class="val">3</div>
        </div>
      </div>
    </div>
  </div>

</main>

<script src="${pageContext.request.contextPath}/assets/js/dashboard-user.js"></script>
</body>
</html>