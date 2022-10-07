import { Controller } from "stimulus"

export default class extends Controller {

  connect() {
    console.log('Hello from controller')

    function randomColor() {
      let color = [];
      for (let i = 0; i < 3; i++) {
        color.push(Math.floor(Math.random() * 256));
      }
      return 'rgb(' + color.join(', ') + ')';
    }

    const links = document.querySelectorAll("#word");

    console.log(links)

    links.forEach(element => element.addEventListener("mouseover", (event) => {
      console.log(element)
      element.style.backgroundColor = randomColor();
    })
    )

    links.forEach(element => element.addEventListener("mouseout", (event) => {
      console.log(element)
      element.style.backgroundColor = ''
    })
    )
  }

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
