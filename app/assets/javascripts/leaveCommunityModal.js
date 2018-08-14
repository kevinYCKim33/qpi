document.addEventListener('turbolinks:load',function() {

  // Get the modal
  var modal = document.getElementById('confirmModal');

  // Get the button that opens the modal
  var btn = document.getElementById("modalTriggerButton");

  // Get the <span> element that closes the modal
  var span = document.getElementsByClassName("close")[0];

  var stay = document.getElementsByClassName("stay")[0];




  // When the user clicks the button, open the modal
  btn.onclick = function() {
      modal.style.display = "flex";
  }

  // When the user clicks on <span> (x), close the modal
  span.onclick = function() {
      modal.style.display = "none";
  }

  stay.onclick = function() {
    modal.style.display = "none";
  }

  // When the user clicks anywhere outside of the modal, close it
  window.onclick = function(event) {
      if (event.target == modal) {
          modal.style.display = "none";
      }
  }

  // community navbar logic
  $(".nav-link-2").on('click', function(){
    let activeSection = document.getElementsByClassName("active-section")[0];
    activeSection.className = 'hidden-section';

    let prevCurrentNav = $('.w--current')[0];
    prevCurrentNav.className = 'nav-link-2 current2 w-nav-link'; // get rid of '.w--current'
    this.className =  'nav-link-2 current2 w-nav-link w--current'; // add '.w-current' to clicked button

    let buttonId = this.id; // i.e. about-button
    let buttonTag = buttonId.split("-")[0]; // i.e. about
    $(`#${buttonTag}`).removeClass('hidden-section').addClass('active-section');
    // if (buttonId == "workshopsButton") {
    //   $('#workshops').removeClass('hidden-section').addClass('active-section');
    // }
    // if (buttonId == 'aboutButton') {
    //   $('#about').removeClass('hidden-section').addClass('active-section');
    // }
    // if (buttonId == 'discussionButton') {
    //   $('#discussions').removeClass('hidden-section').addClass('active-section');
    // }
  })
});
