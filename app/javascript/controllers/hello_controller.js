// Visit The Stimulus Handbook for more details
// https://stimulusjs.org/handbook/introduction
//
// This example controller works with specially annotated HTML like:
//
// <div data-controller="hello">
//   <h1 data-target="hello.output"></h1>
// </div>

import { Controller } from "stimulus"

export default class extends Controller {
  static targets = []

  connect() {

    console.log('Hello from controller')

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
