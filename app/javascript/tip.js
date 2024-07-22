document.addEventListener('DOMContentLoaded', function() {
  const editButtons = document.querySelectorAll('.edit-tip-btn');

  editButtons.forEach(button => {
    button.addEventListener('click', function() {
      const tipId = button.getAttribute('data-tip-id');
      const form = document.querySelector(`.tip-edit-form[data-tip-id="${tipId}"]`);
      if (form) {
        form.classList.toggle('d-none');
      }
    });
  });
});
