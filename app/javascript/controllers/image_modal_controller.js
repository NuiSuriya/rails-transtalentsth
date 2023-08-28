import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="image-modal"
export default class extends Controller {
  static targets = ['modal', 'fullImage']

  connect() {
    this.modalTarget.style.display = 'none'
  }

  openModal(event) {
    const image = event.currentTarget
    const imageUrl = image.style.backgroundImage.slice(5, -2); // Extract the URL from style
    this.fullImageTarget.src = imageUrl;
    this.modalTarget.style.display = "grid";
  }

  closeModal() {
    this.modalTarget.style.display = "none";
  }

  outsideClick(event) {
    if (event.target === this.modalTarget) {
      this.closeModal();
    }
  }
}
