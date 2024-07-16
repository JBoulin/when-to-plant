import { Controller } from "@hotwired/stimulus";
import Swal from 'sweetalert2';

export default class extends Controller {
  static targets = ["form"]

  connect() {
    this.element.addEventListener('click', (event) => {
      event.preventDefault(); // Empêche l'envoi du formulaire immédiat
      this.showAlert();
    });
  }

  showAlert() {
    Swal.fire({
      title: 'Are you sure?',
      text: 'Do you want to submit this form?',
      icon: 'warning',
      showCancelButton: true,
      confirmButtonText: 'Yes, submit it!',
      cancelButtonText: 'No, cancel!',
    }).then((result) => {
      if (result.isConfirmed) {
        this.formTarget.submit(); // Soumet le formulaire si l'utilisateur confirme
      }
    });
  }
  showError(event) {
    event.preventDefault(); // Empêche l'envoi du formulaire immédiat
    const errors = event.detail[0].errors; // Récupère les erreurs de validation
    this.displayErrors(errors);
  }

  displayErrors(errors) {
    Swal.fire({
      title: 'Error!',
      text: errors.join(', '),
      icon: 'error'
    });
  }
}
