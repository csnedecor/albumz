// # Place all the behaviors and hooks related to the matching controller here.
// # All this logic will automatically be available in application.js.
//
// $(function() {
//   $('.pictureInput').on('change', function(event) {
//     alert("clicked!");
//     var files = event.target.files;
//     var image = files[0]
//     var reader = new FileReader();
//     reader.onload = function(file) {
//       var img = new Image();
//       console.log(file);
//       img.src = file.target.result;
//       $('#target').html(img);
//     }
//     reader.readAsDataURL(image);
//     console.log(files);
//   });
// });

$(function() {
  $('.nested-fields').on('change', '.pictureInput', function(event) {
    alert("changed!");
    var files = event.target.files;
    var image = files[0]
    var reader = new FileReader();
    reader.onload = function(file) {
      var img = new Image();
      console.log(file);
      img.src = file.target.result;
      $('#target').html(img);
    }
    reader.readAsDataURL(image);
    console.log(files);
  });
});
