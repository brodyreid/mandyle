import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="background"
export default class extends Controller {
  static targets = [ "source" ]

  connect() {
    const pageName = this.sourceTarget.children[0]?.id;
    console.log('background controller connected')
    if (!pageName) return;

    document.body.classList.add('background-' + pageName);
    console.log(pageName);
  }
}
