// $(document).ready(function() {
//
//     $('.modal-background').fadeIn();
//
//   $('.close-modal').click(function() {
//     $('.modal-background').fadeOut();
//   });
// });

$( document ).on('turbolinks:load',function() {
  console.log('hi im working');
  $('.modal-background').fadeOut();
});
