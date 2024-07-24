import { Controller } from "@hotwired/stimulus";
import Swal from 'sweetalert2';

export default class extends Controller {
  static values = {
    icon: String,
    title: String,
    confirmButtonText: String,
    html: String // Ajout de la définition pour `html`
  }

  connect() {
    // Si vous avez besoin de lier des événements au chargement du contrôleur
    this.element.addEventListener('submit', this.sure.bind(this));
  }

  initSweetalert(event) {
    event.preventDefault(); // Prevent the form from being submitted

    Swal.fire({
      icon: this.iconValue,
      title: this.titleValue,
      html: this.htmlValue, // Utilisation de `htmlValue`
      confirmButtonColor: "#0c4b36",
      showConfirmButton: true,
      showCancelButton: false, // Suppression du bouton Annuler
      animation: true
    }).then((result) => {
      if (result.isConfirmed) {
        this.element.submit(); // Soumettre le formulaire manuellement
      }
    });
  }

  sure(event) {
    event.preventDefault(); // Empêche l'action par défaut du lien

    Swal.fire({
      icon: this.iconValue,
      title: this.titleValue,
      html: this.htmlValue,
      confirmButtonColor: "#0c4b36",
      confirmButtonText: this.confirmButtonTextValue,
      showCancelButton: true,
      cancelButtonText: this.cancelButtonTextValue,
      animation: true
    }).then((result) => {
      if (result.isConfirmed) {
        // Si l'utilisateur confirme, déclenche la navigation
        window.location.href = this.element.href;
      }
    });
  }
}
