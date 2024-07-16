import { Controller } from "@hotwired/stimulus";
import Swal from 'sweetalert2';

export default class extends Controller {
  static values = {
    icon: String,
    alertTitle: String,
    alertHtml: String,
    confirmButtonText: String
  }

  connect() {
    console.log('alert controller');
    const toastMixin = Swal.mixin({
      toast: true,
      icon: 'success',
      title: 'General Title',
      animation: false,
      position: 'top-right',
      showConfirmButton: false,
      timer: 3000,
      timerProgressBar: true,
      didOpen: (toast) => {
        toast.addEventListener('mouseenter', Swal.stopTimer);
        toast.addEventListener('mouseleave', Swal.resumeTimer);
      }
    });

    // this.formTarget.querySelector(".first").addEventListener('click', () => {
    //   Swal.fire({
    //     toast: true,
    //     icon: 'success',
    //     title: 'Commentaire ajouter avec succès',
    //     animation: false,
    //     position: 'bottom',
    //     showConfirmButton: false,
    //     timer: 3000,
    //     timerProgressBar: true,
    //     didOpen: (toast) => {
    //       toast.addEventListener('mouseenter', Swal.stopTimer);
    //       toast.addEventListener('mouseleave', Swal.resumeTimer);
    //     }
    //   });
    // });

    // this.formTarget.querySelector(".second").addEventListener('click', () => {
    //   toastMixin.fire({
    //     animation: true,
    //     title: 'Connextion établis avec succès'
    //   });
    // });

    // this.formTarget.querySelector(".third").addEventListener('click', () => {
    //   toastMixin.fire({
    //     title: 'Mauvais mot de passe',
    //     icon: 'error'
    //   });
    // });
  }
  initSweetalert(event) {
    event.preventDefault(); // Prevent the form to be submited after the submit button has been clicked

    Swal.fire({
      icon: this.iconValue,
      title: this.titleValue,
      html: this.htmlValue,
      confirmButtonText: this.confirmButtonTextValue,
      reverseButtons: true
    })
  }
}
