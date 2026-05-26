<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="fr">
<head>
  <meta charset="UTF-8"/>
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <title>N'KA Lagnini – Dashboard Utilisateur</title>

  <!-- Bootstrap 5 CSS -->
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet"/>
  <!-- Bootstrap Icons -->
  <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css" rel="stylesheet"/>
  <!-- Styles personnalisés -->
  <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/dashboard-user.css"/></head>
</head>
<body>

<!-- ═══════════════════════════════════════
     SIDEBAR
═══════════════════════════════════════ -->
<aside class="sidebar" id="sidebar">

  <!-- Logo -->
  <div class="sidebar-logo">
    <div class="logo-icon">
      <svg viewBox="0 0 24 24"><path d="M12 2C8 2 4 6 4 10c0 5 8 12 8 12s8-7 8-12c0-4-4-8-8-8zm0 11a3 3 0 110-6 3 3 0 010 6z"/></svg>
    </div>
    <div class="logo-text">
      <div class="name">N'KA</div>
      <div class="sub">Lagnini</div>
    </div>
  </div>

  <!-- Bouton Fermer / Ouvrir -->
  <div class="sidebar-close-btn" id="toggleBtn">
    <i class="bi bi-layout-sidebar-reverse" id="toggleIcon"></i>
    <span class="close-label">Fermer</span>
  </div>

  <!-- Navigation -->
  <nav class="sidebar-nav">
    <a href="#" class="nav-item-link active" data-label="Accueil">
      <i class="bi bi-house"></i>
      <span class="nav-label">Accueil</span>
    </a>
    <a href="#" class="nav-item-link" data-label="Mes objectifs">
      <i class="bi bi-grid"></i>
      <span class="nav-label">Mes objectifs</span>
    </a>
    <a href="#" class="nav-item-link" data-label="Planning">
      <i class="bi bi-calendar3"></i>
      <span class="nav-label">Planning</span>
    </a>
    <a href="#" class="nav-item-link" data-label="Actions">
      <i class="bi bi-lightning"></i>
      <span class="nav-label">Actions</span>
    </a>
    <a href="#" class="nav-item-link" data-label="Progression">
      <i class="bi bi-bar-chart-line"></i>
      <span class="nav-label">Progression</span>
    </a>
    <a href="#" class="nav-item-link" data-label="Badges">
      <i class="bi bi-patch-check"></i>
      <span class="nav-label">Badges</span>
    </a>
    <a href="#" class="nav-item-link" data-label="Notifications">
      <i class="bi bi-bell"></i>
      <span class="nav-label">Notifications</span>
      <span class="notif-badge">1</span>
    </a>
    <a href="#" class="nav-item-link" data-label="Profil">
      <i class="bi bi-person"></i>
      <span class="nav-label">Profil</span>
    </a>
    <a href="#" class="nav-item-link" data-label="Paramètres">
      <i class="bi bi-gear"></i>
      <span class="nav-label">Paramètres</span>
    </a>
  </nav>

  <!-- Déconnexion -->
  <div class="sidebar-logout">
    <a href="#" class="nav-item-link" data-label="Déconnexion" style="padding:10px 22px;">
      <i class="bi bi-box-arrow-right"></i>
      <span class="nav-label">Déconnexion</span>
    </a>
  </div>

</aside>

<!-- ═══════════════════════════════════════
     MAIN CONTENT
═══════════════════════════════════════ -->
<main class="main-content" id="mainContent">

  <!-- ── TOPBAR ── -->
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
      <div class="user-avatar">I</div>
    </div>
  </div>

  <!-- ── STAT CARDS ── -->
  <div class="row g-3 mb-4">

    <div class="col-6 col-md-3">
      <div class="stat-card">
        <div class="sc-label">
          Objectifs actifs
          <span class="sc-icon blue"><i class="bi bi-bullseye"></i></span>
        </div>
        <div class="sc-value">5</div>
        <a href="#" class="voir-link">Voir &rsaquo;</a>
      </div>
    </div>

    <div class="col-6 col-md-3">
      <div class="stat-card">
        <div class="sc-label">
          Actions du jour
          <span class="sc-icon green"><i class="bi bi-lightning-fill"></i></span>
        </div>
        <div class="sc-value">8</div>
        <a href="#" class="voir-link">Voir &rsaquo;</a>
      </div>
    </div>

    <div class="col-6 col-md-3">
      <div class="stat-card">
        <div class="sc-label">
          Taux de réussite
          <span class="sc-icon purple"><i class="bi bi-graph-up"></i></span>
        </div>
        <div class="sc-value">72%</div>
        <a href="#" class="voir-link">Voir &rsaquo;</a>
      </div>
    </div>

    <div class="col-6 col-md-3">
      <div class="stat-card">
        <div class="sc-label">
          Badges obtenus
          <span class="sc-icon orange"><i class="bi bi-patch-check-fill"></i></span>
        </div>
        <div class="sc-value">10</div>
        <a href="#" class="voir-link">Voir &rsaquo;</a>
      </div>
    </div>

  </div><!-- /row stat cards -->

  <!-- ── OBJECTIFS + PANEL DROIT ── -->
  <div class="row g-3 mb-4">

    <!-- Aperçu des objectifs -->
    <div class="col-12 col-lg-7">
      <div class="section-card">

        <!-- Header -->
        <div class="d-flex align-items-center justify-content-between mb-3">
          <span class="section-title">Aperçu de vos objectifs</span>
          <!-- Filtre dropdown -->
          <div class="position-relative">
            <button class="filter-btn" id="filterBtn">
              <span class="filter-label">Tous</span>
              <i class="bi bi-chevron-down" style="font-size:10px;"></i>
            </button>
            <ul class="filter-menu" id="filterMenu">
              <li class="filter-option" data-filter="tous">Tous</li>
              <li class="filter-option" data-filter="sport">Sport</li>
              <li class="filter-option" data-filter="economie">Économie</li>
              <li class="filter-option" data-filter="apprentissage">Apprentissage</li>
              <li class="filter-option" data-filter="developpement">Développement</li>
            </ul>
          </div>
        </div>

        <!-- Objectif 1 -->
        <div class="obj-item" data-cat="sport">
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

        <!-- Objectif 2 -->
        <div class="obj-item" data-cat="economie">
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

        <!-- Objectif 3 -->
        <div class="obj-item" data-cat="apprentissage">
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

        <!-- Objectif 4 -->
        <div class="obj-item" data-cat="developpement">
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

    <!-- Panel droit -->
    <div class="col-12 col-lg-5 d-flex flex-column gap-3">

      <!-- Actions du jour -->
      <div class="actions-card">
        <div class="panel-header">
          <span class="section-title">Actions du jour</span>
          <a href="#" class="voir-toutes">Voir toutes</a>
        </div>
        <div class="action-item done">
          <input class="form-check-input" type="checkbox" checked/>
          <span>30 mn de course</span>
        </div>
        <div class="action-item done">
          <input class="form-check-input" type="checkbox" checked/>
          <span>Etudier Java (1h)</span>
        </div>
        <div class="action-item">
          <input class="form-check-input" type="checkbox"/>
          <span>Lire 20 pages</span>
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

    </div><!-- /col panel droit -->

  </div><!-- /row objectifs -->

  <!-- ── STATISTIQUES ── -->
  <div class="page-section-title">Statistiques</div>
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

  </div><!-- /row statistiques -->

</main>

<!-- Bootstrap JS Bundle -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
<!-- Script personnalisé -->
<script src="${pageContext.request.contextPath}/assets/js/dashboard-user.js"></script>

</body>
</html>