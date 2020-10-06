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
  static targets = ["tabPanel", "tabButton"]

  connect () {
    console.log('connacted now with stimulus')
    // event.preventDefault()
  }

  initialize() {
    this.activateTab()
  }


  activateTab() {
    this.tabPanelTargets.forEach( (elem, i) => {
      elem.classList.toggle("tab_panel--active", this.index == i)
    })

    this.tabButtonTargets.forEach( (elem, i) => {
      elem.classList.toggle("tab_button--active", this.index == i)
    });
  }

  get index() {
    return parseInt(this.data.get("index"))
  }

  set index(value) {
    this.data.set("index", value)
    this.activateTab()
  }

}
