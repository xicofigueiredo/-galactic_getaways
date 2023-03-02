import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="bookings"
export default class extends Controller {

  static targets = ["entryDate", "exitDate", "finalPrice"]
  static values = { "price": Number }

  calculateTotalPrice() {
    const start = new Date(this.entryDateTarget.value)
    const end = new Date(this.exitDateTarget.value)
    const currentDate = new Date();
    const price = this.priceValue

    const nightsMiliseconds = end.getTime() - start.getTime()
    const nights = nightsMiliseconds / (1000 * 60 * 60 * 24)

    const totalPrice = nights * price

    if (isNaN(start) || currentDate >= start){
      this.finalPriceTarget.innerText = `Select a valid Entry date`;
    } else if (isNaN(end)){
      this.finalPriceTarget.innerText = `Select a valid Exit date`
    } else if (nights <= 0) {
      alert("PLEASE SELECT VALID DATES")
      this.finalPriceTarget.innerText = `Select valid dates`
    } else {
      this.finalPriceTarget.innerText = `Total price: ${totalPrice} €`;
    }
  }
}
