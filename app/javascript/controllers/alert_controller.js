import { Controller } from "@hotwired/stimulus";
import Swal from 'sweetalert2';

export default class extends Controller {
  static values = {
    icon: String,
    alertTitle: String,
    alertHtml: String,
    confirmButtonText: String
  }

  initSweetalert(event) {
    event.preventDefault(); // Prevent the form from being submitted

    Swal.fire({
      icon: this.iconValue,
      title: this.alertTitleValue,
      html: this.alertHtmlValue,
      // confirmButtonText: this.confirmButtonTextValue,
      showCancelButton: false, // Assuming you don't need a cancel button for login
      title: 'Connexion établie avec succès',
      animation: true
    }).then((result) => {
      if (result.isConfirmed) {
        // Submit the form manually
        this.element.submit();
      }
    });
  }
}
