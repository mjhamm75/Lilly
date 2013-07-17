$(document).ready(function() {
  "use strict";

  $('#add_new_scout').on('click', function() {
    var template = $("#new_scout_modal").html();
    create_modal(template, this.id);
  });

  $('#complete').on('click', function(e) {
    e.preventDefault();
    if(this.id === "complete_add_new_scout") {
      add_new_scout();
    }
    if(this.id === "complete_add_merit_badge") {
      add_new_merit_badge();
    }
    $('#modal_container').modal('hide');
  });

  $("tr[data-link]").click(function() {
    window.location = $(this).data("link");
  });

  $("#add_merit_badge").click(function(e) {
    e.preventDefault();
    var template = $("#add_merit_badge_modal").html();
    create_modal(template, this.id);
    $('.chzn-select').chosen();
  });

  var create_modal = function(template, name) {
    $('.modal-header').html($(template).siblings('.modal-header'));
    $('.modal-body').html($(template).siblings('.modal-body'));
    $('.modal-footer #complete').attr("id", "complete_" + name);
    $('#modal_container').modal();
  };

  var add_new_scout = function() {
    var req = $.ajax({
      url: '/scouts/new',
      data: { first_name: $('#first_name').val(), last_name: $('#last_name').val(), birthday: $("#birthdate").val()},
      dataType: 'json'
    });

    var success = function(data) {
      $('#main_scout_list tr:last').after('<tr><td>' + data.full_name + '</td><td>' + data.age + '</td></tr>');
    };

    req.done(success);
  };

  var add_new_merit_badge = function() {
    var badge_name = $('.chzn-select option:selected').text();
    $('#merit_badges table tr:last').after('<tr><td>' + badge_name + '</td><td>0</td></tr>' );
    console.log("here");
  }
});