document.addEventListener('DOMContentLoaded', function () {
  const sidebar     = document.getElementById('sidebar');
  const mainContent = document.getElementById('mainContent');
  const toggleBtn   = document.getElementById('toggleBtn');
  const toggleIcon  = document.getElementById('toggleIcon');

  toggleBtn.addEventListener('click', function () {
    const collapsed = sidebar.classList.toggle('collapsed');
    mainContent.classList.toggle('collapsed', collapsed);
    toggleIcon.className = collapsed
      ? 'bi bi-layout-sidebar'
      : 'bi bi-layout-sidebar-reverse';
  });

  document.querySelectorAll('.nav-item-link').forEach(function (link) {
    link.addEventListener('click', function (e) {
      e.preventDefault();
      document.querySelectorAll('.nav-item-link').forEach(l => l.classList.remove('active'));
      this.classList.add('active');
    });
  });

  document.querySelectorAll('.action-item .form-check-input').forEach(function (checkbox) {
    checkbox.addEventListener('change', function () {
      const item = this.closest('.action-item');
      if (this.checked) {
        item.classList.add('done');
      } else {
        item.classList.remove('done');
      }
    });
  });

  const filterBtn = document.getElementById('filterBtn');
  const filterMenu = document.getElementById('filterMenu');

  if (filterBtn && filterMenu) {
    filterBtn.addEventListener('click', function (e) {
      e.stopPropagation();
      filterMenu.classList.toggle('show');
    });

    document.addEventListener('click', function () {
      filterMenu.classList.remove('show');
    });

    filterMenu.querySelectorAll('.filter-option').forEach(function (opt) {
      opt.addEventListener('click', function () {
        const selected = this.dataset.filter;
        filterBtn.querySelector('.filter-label').textContent = this.textContent;
        filterMenu.classList.remove('show');

        document.querySelectorAll('.obj-item').forEach(function (item) {
          if (selected === 'tous' || item.dataset.cat === selected) {
            item.style.display = 'flex';
          } else {
            item.style.display = 'none';
          }
        });
      });
    });
  }

});