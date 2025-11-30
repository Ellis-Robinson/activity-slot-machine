import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["button"]

  connect() {
    console.log("Spin controller active")
  }

  spin() {
    console.log('spin is working')
  }
}
