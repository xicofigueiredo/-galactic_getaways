import { Controller } from "@hotwired/stimulus"
import Typed from "typed.js"

// Connects to data-controller="typed-js"
export default class extends Controller {
  connect() {
    new Typed(this.element, {
      strings: ['Planets', 'Commets', 'Asteroids', 'Stars', 'Galaxies'],
      typeSpeed: 80,
      backSpeed: 0,
      backDelay: 1500,
      loop: true
    })
  }
}
