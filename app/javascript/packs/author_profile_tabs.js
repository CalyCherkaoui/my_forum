import $ from 'jquery';

// var tabButtons = document.querySelectorAll("#author_profile .author_profile_articles .tab_container .tab_button_container > button");
let tabButtons = $(".tab_button_container > button");
let tabPanels = $(".tab_panel");
// var tabPanels = document.querySelectorAll("#author_profile .author_profile_articles .tab_container .tab_panel");

var x = document.querySelectorAll("section");
// //author profile tabs

// function showPanel(panelIndex) {
//   tabButtons[panelIndex].style.borderBottom="none";
//   tabButtons[panelIndex].style.backgroundColor="red";
//   tabButtons[panelIndex].style.borderTop="1px solid $classic-blue";
//   tabButtons[panelIndex].style.borderLeft="1px solid $classic-blue";
//   tabButtons[panelIndex].style.borderRight="1px solid $classic-blue";
//   tabButtons[panelIndex].style.color="$my_green";
//   tabButtons[panelIndex].style.fontWeight="900";
//   tabPanels.forEach(function (node) {
//     node.style.display="none"
//   });
//   tabPanels[panelIndex].style.display="block";
//   tabPanels[panelIndex].style.backgroundColor="red";
// }

console.log('loged from js in pack folder');