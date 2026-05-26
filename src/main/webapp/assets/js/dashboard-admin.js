const sidebar     = document.getElementById('sidebar');
const mainContent = document.getElementById('mainContent');
const toggleBtn   = document.getElementById('toggleBtn');
const toggleIcon  = document.getElementById('toggleIcon');
 
toggleBtn.addEventListener('click', () => {
  const collapsed = sidebar.classList.toggle('collapsed');
  mainContent.classList.toggle('collapsed', collapsed);
  toggleIcon.className = collapsed
    ? 'bi bi-layout-sidebar'
    : 'bi bi-layout-sidebar-reverse';
});
 
/* ── Chart toggle button ── */
function setActive(btn) {
  document.querySelectorAll('.chart-toggle-btn').forEach(b => b.classList.remove('active'));
  btn.classList.add('active');
}
 
/* ── Growth Chart ── */
const ctx = document.getElementById('growthChart').getContext('2d');
 
const labels = ['Lun','Mar','Mer','Jeu','Ven','Sam','Dim'];
const data   = [1200, 1800, 1500, 2100, 1900, 2400, 2250];
 
const gradient = ctx.createLinearGradient(0, 0, 0, 200);
gradient.addColorStop(0, 'rgba(99,102,241,0.25)');
gradient.addColorStop(1, 'rgba(99,102,241,0)');
 
new Chart(ctx, {
  type: 'line',
  data: {
    labels,
    datasets: [{
      label: 'Utilisateurs',
      data,
      borderColor: '#6366f1',
      backgroundColor: gradient,
      borderWidth: 2.5,
      pointBackgroundColor: '#6366f1',
      pointRadius: 4,
      pointHoverRadius: 6,
      tension: 0.45,
      fill: true,
    }]
  },
  options: {
    responsive: true,
    maintainAspectRatio: false,
    plugins: {
      legend: { display: false },
      tooltip: {
        backgroundColor: '#1a1a2e',
        titleColor: '#fff',
        bodyColor: '#ccc',
        padding: 10,
        cornerRadius: 8,
      }
    },
    scales: {
      x: {
        grid: { display: false },
        ticks: { color: '#aaa', font: { size: 11 } }
      },
      y: {
        grid: { color: '#f0f0f5', lineWidth: 1 },
        ticks: { color: '#aaa', font: { size: 11 } },
        beginAtZero: false,
      }
    }
  }
});