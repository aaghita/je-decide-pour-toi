import { Controller } from "stimulus"

export default class extends Controller {
  static targets = []

  connect() {
    console.log('Hello, Stimulus!')
  }

  action(event) {
    event.preventDefault()

    console.log('Hello, from Action Controller!')
  }
}
