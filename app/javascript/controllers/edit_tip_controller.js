import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="edit-tip"
export default class extends Controller {
  static targets = ["form"]
  connect() {
    console.log("hello");
    console.log(this.formTarget);
  }
  toggle(event) {
    event.preventDefault()
    console.log("click");

    this.formTarget.classList.toggle("d-none")
  }
}
