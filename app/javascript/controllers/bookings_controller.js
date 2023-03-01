import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="bookings"
export default class extends Controller {

  static targets = ["entryDate", "exitDate"]
  static values = { "price": Number }

  connect() {
    console.log(this.entryDateTarget)
    console.log(this.exitDateTarget)
    console.log(this.priceValue)
    // const nightCount = Math.ceil((exitDate - entryDate) / (1000 * 60 * 60 * 24));
    console.dir(nightCount)
  }
}
