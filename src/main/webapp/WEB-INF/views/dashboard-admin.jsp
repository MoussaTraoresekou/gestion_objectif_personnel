<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="fr">
<head>
  <meta charset="UTF-8"/>
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <title>N'KA Lagnini – Dashboard Admin</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet"/>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css" rel="stylesheet"/>
  <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/dashboard-admin.css"/></head>
<body>

<aside class="sidebar" id="sidebar">

  <div class="sidebar-logo">
    <div class="logo-icon">
      <svg viewBox="0 0 24 24"><path d="M12 2C8 2 4 6 4 10c0 5 8 12 8 12s8-7 8-12c0-4-4-8-8-8zm0 11a3 3 0 110-6 3 3 0 010 6z"/></svg>
    </div>
    <div class="logo-text">
      <div class="name">N'KA</div>
      <div class="sub">Lagnini</div>
    </div>
  </div>

  <div class="sidebar-close-btn" id="toggleBtn">
    <i class="bi bi-layout-sidebar-reverse" id="toggleIcon"></i>
    <span class="close-label">Fermer</span>
  </div>

  <nav class="sidebar-nav">
    <a href="#" class="nav-item-link" data-label="Accueil">
      <i class="bi bi-house"></i><span class="nav-label">Accueil</span>
    </a>
    <a href="#" class="nav-item-link" data-label="Utilisateurs">
      <i class="bi bi-people"></i><span class="nav-label">Utilisateurs</span>
    </a>
    <a href="#" class="nav-item-link active" data-label="Objectifs">
      <i class="bi bi-bullseye"></i><span class="nav-label">Objectifs</span>
    </a>
    <a href="#" class="nav-item-link" data-label="Badges">
      <i class="bi bi-patch-check"></i><span class="nav-label">Badges</span>
    </a>
    <a href="#" class="nav-item-link" data-label="Profil">
      <i class="bi bi-person"></i><span class="nav-label">Profil</span>
    </a>
    <a href="#" class="nav-item-link" data-label="Paramètres">
      <i class="bi bi-gear"></i><span class="nav-label">Paramètres</span>
    </a>
  </nav>

  <div class="sidebar-logout">
    <a href="#" class="nav-item-link" data-label="Déconnexion" style="padding:10px 22px;">
      <i class="bi bi-box-arrow-right"></i>
      <span class="nav-label">Déconnexion</span>
    </a>
  </div>
</aside>

<div class="main-content" id="mainContent">

  <!-- TOPBAR -->
  <div class="topbar">
    <div class="topbar-left">
      <h4>Tableau de bord</h4>
      <p>Bienvenue dans votre espace d'administration</p>
    </div>
    <div class="topbar-right">
      <button class="date-picker-btn">
        <i class="bi bi-calendar3"></i>
        1 Jan – 31 Jan 2025
        <i class="bi bi-chevron-down" style="font-size:10px;"></i>
      </button>
      <div class="icon-btn"><i class="bi bi-bell"></i></div>
      <div class="icon-btn"><i class="bi bi-gear"></i></div>
      <div class="admin-info">
        <div class="admin-avatar">M</div>
        <div>
          <div class="admin-name">Moussa D.</div>
          <div class="admin-role">Admin</div>
        </div>
      </div>
    </div>
  </div>

  <!-- PAGE BODY -->
  <div class="page-body">

    <!-- ── STAT CARDS ── -->
    <div class="row g-3 mb-4">

      <!-- Total Users -->
      <div class="col-6 col-md-3">
        <div class="stat-card">
          <div class="d-flex justify-content-between align-items-start">
            <div>
              <div class="sc-label">Total Users</div>
              <div class="sc-value">24,592</div>
            </div>
            <div class="sc-icon blue"><i class="bi bi-people-fill"></i></div>
          </div>
          <div class="sparkline-wrap">
            <svg viewBox="0 0 120 36" preserveAspectRatio="none">
              <defs><linearGradient id="g1" x1="0" y1="0" x2="0" y2="1">
                <stop offset="0%" stop-color="#2979ff" stop-opacity=".25"/>
                <stop offset="100%" stop-color="#2979ff" stop-opacity="0"/>
              </linearGradient></defs>
              <path d="M0,28 C20,24 30,10 50,14 C70,18 80,8 120,6" fill="none" stroke="#2979ff" stroke-width="1.8"/>
              <path d="M0,28 C20,24 30,10 50,14 C70,18 80,8 120,6 L120,36 L0,36 Z" fill="url(#g1)"/>
            </svg>
          </div>
          <div class="mt-1">
            <span class="trend up"><i class="bi bi-arrow-up-short"></i>12.5%</span>
            <span class="trend-label">ce mois</span>
          </div>
        </div>
      </div>

      <!-- Objectifs Créés -->
      <div class="col-6 col-md-3">
        <div class="stat-card">
          <div class="d-flex justify-content-between align-items-start">
            <div>
              <div class="sc-label">Objectifs Créés</div>
              <div class="sc-value">8,234</div>
            </div>
            <div class="sc-icon teal"><i class="bi bi-bullseye"></i></div>
          </div>
          <div class="sparkline-wrap">
            <svg viewBox="0 0 120 36" preserveAspectRatio="none">
              <defs><linearGradient id="g2" x1="0" y1="0" x2="0" y2="1">
                <stop offset="0%" stop-color="#00897b" stop-opacity=".25"/>
                <stop offset="100%" stop-color="#00897b" stop-opacity="0"/>
              </linearGradient></defs>
              <path d="M0,30 C20,22 40,18 60,16 C80,14 100,10 120,8" fill="none" stroke="#00897b" stroke-width="1.8"/>
              <path d="M0,30 C20,22 40,18 60,16 C80,14 100,10 120,8 L120,36 L0,36 Z" fill="url(#g2)"/>
            </svg>
          </div>
          <div class="mt-1">
            <span class="trend up"><i class="bi bi-arrow-up-short"></i>8.2%</span>
            <span class="trend-label">ce mois</span>
          </div>
        </div>
      </div>

      <!-- Taux moyen de réussite -->
      <div class="col-6 col-md-3">
        <div class="stat-card">
          <div class="d-flex justify-content-between align-items-start">
            <div>
              <div class="sc-label">Taux moyen de réussite</div>
              <div class="sc-value">68.4%</div>
            </div>
            <div class="sc-icon red"><i class="bi bi-graph-up-arrow"></i></div>
          </div>
          <div class="sparkline-wrap">
            <svg viewBox="0 0 120 36" preserveAspectRatio="none">
              <defs><linearGradient id="g3" x1="0" y1="0" x2="0" y2="1">
                <stop offset="0%" stop-color="#e53935" stop-opacity=".2"/>
                <stop offset="100%" stop-color="#e53935" stop-opacity="0"/>
              </linearGradient></defs>
              <path d="M0,20 C20,26 40,30 60,22 C80,14 100,18 120,12" fill="none" stroke="#e53935" stroke-width="1.8"/>
              <path d="M0,20 C20,26 40,30 60,22 C80,14 100,18 120,12 L120,36 L0,36 Z" fill="url(#g3)"/>
            </svg>
          </div>
          <div class="mt-1">
            <span class="trend down"><i class="bi bi-arrow-down-short"></i>2.1%</span>
            <span class="trend-label">ce mois</span>
          </div>
        </div>
      </div>

      <!-- Badges délivrés -->
      <div class="col-6 col-md-3">
        <div class="stat-card">
          <div class="d-flex justify-content-between align-items-start">
            <div>
              <div class="sc-label">Badges délivrés</div>
              <div class="sc-value">14,890</div>
            </div>
            <div class="sc-icon green"><i class="bi bi-patch-check-fill"></i></div>
          </div>
          <div class="sparkline-wrap">
            <svg viewBox="0 0 120 36" preserveAspectRatio="none">
              <defs><linearGradient id="g4" x1="0" y1="0" x2="0" y2="1">
                <stop offset="0%" stop-color="#388e3c" stop-opacity=".25"/>
                <stop offset="100%" stop-color="#388e3c" stop-opacity="0"/>
              </linearGradient></defs>
              <path d="M0,26 C20,20 40,14 60,16 C80,18 100,8 120,6" fill="none" stroke="#388e3c" stroke-width="1.8"/>
              <path d="M0,26 C20,20 40,14 60,16 C80,18 100,8 120,6 L120,36 L0,36 Z" fill="url(#g4)"/>
            </svg>
          </div>
          <div class="mt-1">
            <span class="trend up"><i class="bi bi-arrow-up-short"></i>15.2%</span>
            <span class="trend-label">ce mois</span>
          </div>
        </div>
      </div>
    </div>

    <div class="row g-3 mb-4">

      <!-- Table utilisateurs -->
      <div class="col-12 col-lg-7">
        <div class="section-card">
          <div class="d-flex justify-content-between align-items-start mb-1">
            <div>
              <div class="sc-title">Utilisateurs récents</div>
              <div class="sc-sub">Gérer les membres récemment inscrits</div>
            </div>
          </div>
          <div class="table-responsive mt-2">
            <table class="table mb-0">
              <thead>
                <tr>
                  <th>Détails de l'utilisateur</th>
                  <th>Date d'adhésion</th>
                  <th>Objectifs</th>
                  <th>Statut</th>
                  <th>Actions</th>
                </tr>
              </thead>
              <tbody>
                <tr>
                  <td>
                    <div class="d-flex align-items-center gap-2">
                      <div class="user-avatar-sm av-orange">A</div>
                      <div>
                        <div class="user-name">Alya Diarra</div>
                        <div class="user-email">alya.d@exemple.com</div>
                      </div>
                    </div>
                  </td>
                  <td>Jan 12, 2026</td>
                  <td><span class="d-flex align-items-center gap-1"><span class="badge rounded-circle bg-danger p-1" style="width:8px;height:8px;display:inline-block;"></span>4 active</span></td>
                  <td><span class="badge-status badge-active">ACTIVE</span></td>
                  <td><button class="edit-btn"><i class="bi bi-pencil-square"></i></button></td>
                </tr>
                <tr>
                  <td>
                    <div class="d-flex align-items-center gap-2">
                      <div class="user-avatar-sm av-blue">M</div>
                      <div>
                        <div class="user-name">Moussa Traoré</div>
                        <div class="user-email">m.traore@exemple.com</div>
                      </div>
                    </div>
                  </td>
                  <td>Fév 10, 2026</td>
                  <td>2 active</td>
                  <td><span class="badge-status badge-active">ACTIVE</span></td>
                  <td><button class="edit-btn"><i class="bi bi-pencil-square"></i></button></td>
                </tr>
                <tr>
                  <td>
                    <div class="d-flex align-items-center gap-2">
                      <div class="user-avatar-sm av-green">R</div>
                      <div>
                        <div class="user-name">Rokia Doumbia</div>
                        <div class="user-email">rokia.d@exemple.com</div>
                      </div>
                    </div>
                  </td>
                  <td>Mar 08, 2026</td>
                  <td>0 active</td>
                  <td><span class="badge-status badge-inactive">INACTIVE</span></td>
                  <td><button class="edit-btn"><i class="bi bi-pencil-square"></i></button></td>
                </tr>
              </tbody>
            </table>
          </div>
        </div>
      </div>

      <!-- Activité récente -->
      <div class="col-12 col-lg-5">
        <div class="section-card full-h">
          <div class="d-flex justify-content-between align-items-center mb-2">
            <div class="sc-title">Activité récents</div>
            <button class="act-more"><i class="bi bi-three-dots-vertical"></i></button>
          </div>
          <ul class="activity-list">
            <li class="activity-item">
              <div class="act-avatar av-orange">A</div>
              <div class="act-body">
                <div class="act-text">
                  <strong>Alya D.</strong> Déverrouille le badge du <span class="highlight">Marathon.</span>
                </div>
                <div class="act-time">IL Y A 2 MIN</div>
              </div>
            </li>
            <li class="activity-item">
              <div class="act-avatar" style="background:#607d8b;">S</div>
              <div class="act-body">
                <div class="act-text">
                  <strong>Le Système</strong> a traité le renouvellement d'objectifs quotidiens.
                </div>
                <div class="act-time">IL Y A 1 H</div>
              </div>
            </li>
            <li class="activity-item">
              <div class="act-avatar av-blue">M</div>
              <div class="act-body">
                <div class="act-text">
                  <strong>Moussa T.</strong> Création d'un nouvel objectif <span class="highlight">"Apprendre Java".</span>
                </div>
                <div class="act-time">IL Y A 3 H</div>
              </div>
            </li>
            <li class="activity-item">
              <div class="act-avatar av-green">Z</div>
              <div class="act-body">
                <div class="act-text">
                  Inscription d'un nouvel utilisateur <strong>Rokia D.</strong>, a vérifié avec succès.
                </div>
                <div class="act-time">HIER</div>
              </div>
            </li>
          </ul>
        </div>
      </div>
    </div>

    <div class="row g-3">

      <!-- Graphique croissance -->
      <div class="col-12 col-lg-7">
        <div class="section-card">
          <div class="d-flex justify-content-between align-items-start mb-1">
            <div>
              <div class="sc-title">Aperçu de la croissance des utilisateurs</div>
              <div class="sc-sub">Performance de la plateforme pour la période en cours</div>
            </div>
            <div class="chart-toggle">
              <button class="chart-toggle-btn active" onclick="setActive(this)">Hebdomadaire</button>
              <button class="chart-toggle-btn" onclick="setActive(this)">Mensuel</button>
            </div>
          </div>
          <div class="chart-area" style="height:220px;">
            <canvas id="growthChart"></canvas>
          </div>
        </div>
      </div>

      <!-- Objectifs Populaires -->
      <div class="col-12 col-lg-5">
        <div class="section-card">
          <div class="d-flex justify-content-between align-items-center mb-3">
            <div class="sc-title">Objectif Populaire</div>
            <button class="act-more"><i class="bi bi-three-dots-horizontal"></i></button>
          </div>

          <!-- Item 1 -->
          <div class="obj-pop-item">
            <div class="obj-pop-header">
              <div class="obj-pop-icon blue">📚</div>
              <div>
                <div class="obj-pop-name">Lire 10 livres</div>
                <div class="obj-pop-cat">Domaine Développement Personnel</div>
              </div>
              <div class="obj-pop-pct">85%</div>
            </div>
            <div class="progress">
              <div class="progress-bar bar-blue" style="width:85%"></div>
            </div>
          </div>

          <!-- Item 2 -->
          <div class="obj-pop-item">
            <div class="obj-pop-header">
              <div class="obj-pop-icon green">🏃</div>
              <div>
                <div class="obj-pop-name">Courir 5Km par jour</div>
                <div class="obj-pop-cat">Domaine Sport</div>
              </div>
              <div class="obj-pop-pct">62%</div>
            </div>
            <div class="progress">
              <div class="progress-bar bar-green" style="width:62%"></div>
            </div>
          </div>

          <!-- Item 3 -->
          <div class="obj-pop-item">
            <div class="obj-pop-header">
              <div class="obj-pop-icon orange">💰</div>
              <div>
                <div class="obj-pop-name">Économisez 5 000 $</div>
                <div class="obj-pop-cat">Domaine Économie</div>
              </div>
              <div class="obj-pop-pct">45%</div>
            </div>
            <div class="progress">
              <div class="progress-bar bar-orange" style="width:45%"></div>
            </div>
          </div>

          <a href="#" class="voir-objectifs">Voir tous les objectifs</a>
        </div>
      </div>

    </div>
  </div><!-- /page-body -->
</div><!-- /main-content -->

<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
<!-- Chart.js -->
<script src="https://cdn.jsdelivr.net/npm/chart.js@4.4.0/dist/chart.umd.min.js"></script>
<script src="${pageContext.request.contextPath}/assets/js/dashboard-admin.js"></script>

</body>
</html>