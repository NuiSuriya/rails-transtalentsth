import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["value"]

  connect() {
    this.valueTargets.forEach(target => this.animateCount(target))
  }

  animateCount(target) {
    const targetNumber = parseInt(target.getAttribute("data-target-number"))
    const speed = 300
    const increment = targetNumber / speed

    let currentNumber = 0

    const updateNumber = () => {
      currentNumber += increment
      if (currentNumber < targetNumber) {
        target.innerText = Math.ceil(currentNumber)
        setTimeout(updateNumber, 1)
      } else {
        target.innerText = targetNumber
      }
    }

    updateNumber()
  }
}
