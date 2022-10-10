import { Controller } from "stimulus"

export default class extends Controller {
  static values = {
    color: String
  }

  connect() {
    console.log('Hello from body')
    const body = document.querySelector("body");
    body.style.backgroundColor = this.colorValue;
  }


  // card() {
  //   console.log('Hello from controller')

  //   const links = document.querySelectorAll("body");

  //   console.log(links)

  //   links.forEach(element => element.addEventListener("mouseover", (event) => {
  //     console.log(element)
  //     document.body.style.backgroundColor = randomColor();
  //   })
  //   )
  // }

  toggle(e) {
    console.log('hello from toggle')
    const id = e.target.dataset.id
    const csrfToken = document.querySelector("[name='csrf-token']").content

    console.log(e)
    console.log(id)
    console.log(csrfToken)

    fetch(`/missions/${id}`, {
        method: 'PATCH',
        mode: 'cors',
        cache: 'no-cache',
        credentials: 'same-origin',
        headers: {
            'Content-Type': 'application/json',
            'X-CSRF-Token': csrfToken
        },
        body: JSON.stringify({ completed: e.target.checked })
    })
      .then(response => response.json())
      .then(data => { alert(data.message) })
  }

}
