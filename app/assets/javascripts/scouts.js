$(document).ready(function() {
  "use strict";

  $('#add_new_scout').on('click', function() {
    var template = $("#new_scout_modal").html();
    $('.modal-header').html($(template).siblings('.modal-header'));
    $('.modal-body').html($(template).siblings('.modal-body'));
    $('#modal_container').modal();
  });

  $('#complete').on('click', function(event) {
    event.preventDefault();
    var req = $.ajax({
      url: '/scouts/new',
      data: { first_name: $('#first_name').val(), last_name: $('#last_name').val(), birthday: $("#birthdate").val()},
      dataType: 'json'
    });

    var success = function(data) {
      $('#main_scout_list tr:last').after('<tr><td>' + data.full_name + '</td><td>' + data.age + '</td></tr>');
    };

    req.done(success);
    $('#modal_container').modal('hide');
  });
});