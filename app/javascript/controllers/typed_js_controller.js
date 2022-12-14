import { Controller } from "@hotwired/stimulus"
import Typed from "typed.js"

export default class extends Controller {
  connect() {
    new Typed(this.element, {
      strings: ["COrganising Secret Santa can be fun.", "Life with presents is a lot better."],
      typeSpeed: 50,
      loop: true
    })
  }
}
