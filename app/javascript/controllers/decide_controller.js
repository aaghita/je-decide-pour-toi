import { Controller } from "stimulus"

export default class extends Controller {
  static targets = []

  connect() {
    console.log('Hello, Stimulus!')
  }

  action(event) {
    event.preventDefault()

    console.log('Hello, from Action Controller!')

    function randomColor() {
      let color = [];
      for (let i = 0; i < 3; i++) {
        color.push(Math.floor(Math.random() * 256));
      }
      return 'rgb(' + color.join(', ') + ')';
    }

    document.addEventListener("mouseover", function(){
      document.a.style.backgroundColor = randomColor();
    });

  }

}
