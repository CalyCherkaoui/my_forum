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
    // console.log('this')
    // event.preventDefault()
  }

  initialize () {

    this.tabPanelTargets.forEach ( (elem, i) => {
      elem.classList.toggle("tab_panel--active", 0 == i)
    })

    this.tabButtonTargets.forEach( (elem, i) => {
    elem.classList.toggle("tab_button--active", 0 == i)
    })
  
  }


  activateTab (event) {
    const indicateur = parseInt(event.target.value)
    // console.log(parseInt(element))

    this.tabPanelTargets.forEach ( (elem, i) => {
        elem.classList.toggle("tab_panel--active", indicateur == i)
    })

    this.tabButtonTargets.forEach( (elem, i) => {
      elem.classList.toggle("tab_button--active", indicateur == i)
    })
  }



}
