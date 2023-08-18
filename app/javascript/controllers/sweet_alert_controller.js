import { Controller } from "@hotwired/stimulus";

export default class extends Controller {
  static targets = ["submit", "input"];

  connect() {
    console.log(this.inputTargets.every(input => input.value.trim() !== ""))
  }


  // disabledButton() {
  //   const allInputsFilled = this.inputTargets.every(input => input.value.trim() !== "");
  //   this.submitTarget.disabled = !allInputsFilled;
  // }

  submitForm() {
    Swal.fire({
      position: 'center',
      icon: 'success',
      title: 'Your message has been sent',
      showConfirmButton: true,
      // timer: 3000
    })
  }
}
