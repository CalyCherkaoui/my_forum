// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")


// Uncomment to copy all static images under ../images to the output folder and reference
// them with the image_pack_tag helper in views (e.g <%= image_pack_tag 'rails.png' %>)
// or the `imagePath` JavaScript helper below.
//
// const images = require.context('../images', true)
// const imagePath = (name) => images(name, true)
var tabButtons=document.querySelectorAll("#author_profile .author_profile_articles .tab_container .tab_button_container button");
var tabPanels=document.querySelectorAll("#author_profile .author_profile_articles .tab_container .tab_panel");

$(document).on('turbolinks:load',function(){
  setTimeout(function() {
   $('#flash-panel').slideUp('500');
  }, 5000);
});

//author profile tabs

function showPanel(panelIndex, colorcode) {
  tabButtons.forEach(function (node) {
    node.style.border="none";
    node.style.borderBottom="1px solid $classic-blue"
  });

  tabButtons[panelIndex].style.borderBottom="none";
  tabButtons[panelIndex].style.borderTop="1px solid $classic-blue";
  tabButtons[panelIndex].style.borderLeft="1px solid $classic-blue";
  tabButtons[panelIndex].style.borderRight="1px solid $classic-blue";
  tabButtons[panelIndex].style.color="$my_green";
  tabButtons[panelIndex].style.fontWeight="900";
  tabPanels.forEach(function (node) {
    node.style.display="none"
  });
  tabPanels[panelIndex].style.display="block";
}