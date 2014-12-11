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


//  This works if you manually append an input instead of using cocoon -
// the event handlers are added to the new input tags properly:

// $(function() {
//   $('.nested-fields').on('change', '.pictureInput', function(event) {
//     alert('clicked the nested fields box');
//     $(this).parent().append('<input class="pictureInput" type="file" />')
//   });
// });

$(function() {

  // This doesn't work for additional elements insterted via the cocoon link:
  $('.nested-fields').on('change', '.pictureInput', function(event) {
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

  // this adds the handler to newly-inserted inputs
  $('body').on('cocoon:after-insert', function(event) {

    // add handler to new element
    $('.nested-fields').on('change', '.pictureInput', function(event) {
      var files = event.target.files;
      var image = files[0]
      var reader = new FileReader();
      reader.onload = function(file) {
        var img = new Image();
        console.log(file);
        img.src = file.target.result;
        // instead of replacing the HTML of the target, we need to append
        $('#target').append(img);
      }
      reader.readAsDataURL(image);
      console.log(files);
    });
  });
});
