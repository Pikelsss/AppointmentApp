document.addEventListener('click', function (event) {
  const dropdowns = document.querySelectorAll('.dropdown');
  dropdowns.forEach(dropdown => {
    if (!dropdown.contains(event.target)) {
      dropdown.querySelector('div').classList.add('hidden');
    }
  });
});

document.querySelectorAll('.dropdown button').forEach(button => {
  button.addEventListener('click', function () {
    const menu = this.nextElementSibling;
    menu.classList.toggle('hidden');
  });
});